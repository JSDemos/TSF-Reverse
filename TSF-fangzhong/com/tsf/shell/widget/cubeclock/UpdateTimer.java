package com.tsf.shell.widget.cubeclock;

import com.censivn.C3DEngine.api.message.VMessageQueueManager;

public class UpdateTimer {
    public static long invail_date;
    private Object Locker;
    private boolean Pause;
    private int mDelayTime;
    private TimerThread mTimerThread;

    class TimerThread extends Thread {
        private boolean destoryMe;

        TimerThread() {
            this.destoryMe = false;
        }

        public void destoryTimer() {
            this.destoryMe = true;
        }

        public void run() {
            while (true) {
                synchronized (UpdateTimer.this.Locker) {
                    UpdateTimer.this.refreshTime();
                    if (this.destoryMe) {
                        return;
                    }
                    try {
                        if (UpdateTimer.this.Pause) {
                            UpdateTimer.this.Locker.wait();
                        } else {
                            UpdateTimer.this.Locker.wait((long) UpdateTimer.this.mDelayTime);
                        }
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    static {
        invail_date = -1;
    }

    public UpdateTimer() {
        this.Locker = new Object();
        this.Pause = false;
        this.mDelayTime = 1000;
        this.mTimerThread = new TimerThread();
        this.mTimerThread.start();
    }

    public void onPause() {
        this.Pause = true;
    }

    public void onResume() {
        this.Pause = false;
        synchronized (this.Locker) {
            this.Locker.notifyAll();
        }
    }

    public void onDestroy() {
        this.mTimerThread.destoryTimer();
    }

    public static void delayTimer() {
        delayTimer(3000);
    }

    public static void delayTimer(int delay) {
        long new_date = System.currentTimeMillis() + ((long) delay);
        if (new_date > invail_date) {
            invail_date = new_date;
        }
    }

    public static void earlyTimer(int time) {
        invail_date = System.currentTimeMillis() + ((long) time);
    }

    public void setDelayTime(int delay) {
        this.mDelayTime = delay;
        synchronized (this.Locker) {
            this.Locker.notifyAll();
        }
    }

    private void refreshTime() {
        ClockWidget.mVMessageQueueManager.post(new Runnable() {
            public void run() {
                Log.e("===========refreshTime=============");
                if (!UpdateTimer.this.Pause) {
                    long now = System.currentTimeMillis();
                    if (UpdateTimer.invail_date == -1) {
                        ClockWidget.mMainCubes.refreshAll(now, false);
                    } else if (now >= UpdateTimer.invail_date) {
                        UpdateTimer.invail_date = -1;
                        ClockWidget.mMainCubes.refreshAll(now, true);
                    }
                }
            }
        }, VMessageQueueManager.TYPE_GL_THREAD);
    }
}
