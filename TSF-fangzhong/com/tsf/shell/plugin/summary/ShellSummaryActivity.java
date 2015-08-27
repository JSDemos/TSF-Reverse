package com.tsf.shell.plugin.summary;

import android.app.Activity;
import android.content.Intent;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.AbsoluteLayout;
import android.widget.AbsoluteLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.VideoView;
import java.util.Locale;

public class ShellSummaryActivity extends Activity implements OnGlobalLayoutListener, OnPreparedListener, OnClickListener {
    private float initScreenH;
    private float initScreenW;
    private AbsoluteLayout mAbsoluteLayout;
    private VideoView mVideoView;

    public ShellSummaryActivity() {
        this.initScreenW = 0.0f;
        this.initScreenH = 0.0f;
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        Window w = getWindow();
        if (VERSION.SDK_INT >= 19) {
            w.addFlags(134217728);
            w.addFlags(67108864);
        } else {
            w.addFlags(512);
        }
        setRequestedOrientation(1);
        setContentView(R.layout.activity_main_shell_summary);
        if (Locale.getDefault().getLanguage().equals("zh")) {
            ((ImageView) findViewById(R.id.imageView4)).setImageResource(R.drawable.launcher_text_summary_cn);
        }
        findViewById(R.id.relativeLayout1).setOnClickListener(this);
        findViewById(R.id.linearlayer1).setOnClickListener(this);
        this.mAbsoluteLayout = (AbsoluteLayout) findViewById(R.id.AbsoluteLayout1);
        this.mAbsoluteLayout.getViewTreeObserver().addOnGlobalLayoutListener(this);
        this.mVideoView = (VideoView) findViewById(R.id.videoView1);
        this.mVideoView.setVideoURI(Uri.parse("android.resource://" + getPackageName() + "/raw/preview_color_hd"));
        this.mVideoView.setOnPreparedListener(this);
        this.mVideoView.setZOrderOnTop(false);
        this.mVideoView.start();
        ImageView iv = (ImageView) findViewById(R.id.imageView2);
        Animation am = new RotateAnimation(0.0f, 360.0f, 1, 0.5f, 1, 0.5f);
        am.setInterpolator(new LinearInterpolator());
        am.setDuration(2000);
        am.setRepeatCount(-1);
        iv.setAnimation(am);
        am.startNow();
    }

    private void gotoLauncher() {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        intent.setFlags(320864256);
        intent.setPackage("com.tsf.shell");
        startActivity(intent);
        finish();
    }

    public void onBackPressed() {
        gotoLauncher();
    }

    public void onGlobalLayout() {
        float viewW = (float) this.mAbsoluteLayout.getWidth();
        float viewH = (float) this.mAbsoluteLayout.getHeight();
        float scale = Math.max(viewW / 360.0f, viewH / 640.0f);
        Log.e("", "viewW:" + viewW + "   viewH:" + viewH);
        if (this.initScreenW == viewW) {
            if (this.initScreenH == viewH) {
                return;
            }
        }
        this.initScreenW = viewW;
        this.initScreenH = viewH;
        int scaleWidth = (int) (360.0f * scale);
        int scaleHeight = (int) (640.0f * scale);
        int Left = -((int) ((((float) scaleWidth) - viewW) / 2.0f));
        int Top = -((int) ((((float) scaleHeight) - viewH) / 2.0f));
        this.mVideoView.setLayoutParams(new LayoutParams(scaleWidth, scaleHeight, Left, Top));
        findViewById(R.id.framelayout1).setLayoutParams(new LayoutParams((int) viewW, (int) viewH, 0, 0));
    }

    public void onPrepared(MediaPlayer mp) {
        mp.start();
        mp.setLooping(true);
    }

    public void onClick(View v) {
        gotoLauncher();
    }
}
