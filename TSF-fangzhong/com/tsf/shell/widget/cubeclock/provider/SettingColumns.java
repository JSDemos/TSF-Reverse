package com.tsf.shell.widget.cubeclock.provider;

import android.net.Uri;
import android.provider.BaseColumns;

public final class SettingColumns implements BaseColumns {
    public static final String AUTHORITY = "com.tsf.shell.widget.cubeclock.provider";
    public static final String COLOR = "color";
    public static final Uri CONTENT_URI;
    public static final String CREATEDDATE = "created";
    public static final String DEFAULT_SORT_ORDER = "modified DESC";
    public static final String MODE = "mode";
    public static final String MODIFIEDDATE = "modified";
    public static final String WIDGETID = "widgetid";

    static {
        CONTENT_URI = Uri.parse("content://com.tsf.shell.widget.cubeclock.provider/settings");
    }
}
