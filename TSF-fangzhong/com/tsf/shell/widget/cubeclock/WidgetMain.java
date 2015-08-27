package com.tsf.shell.widget.cubeclock;

import android.content.Context;
import com.censivn.C3DEngine.api.core.VObject3d;

public class WidgetMain {
    public VObject3d getWidget(Context context, Integer id) {
        return new ClockWidget(context, id.intValue());
    }
}
