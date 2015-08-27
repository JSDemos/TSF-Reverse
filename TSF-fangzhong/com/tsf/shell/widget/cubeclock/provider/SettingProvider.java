package com.tsf.shell.widget.cubeclock.provider;

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.text.TextUtils;
import com.tsf.shell.widget.cubeclock.Log;
import java.util.HashMap;

public class SettingProvider extends ContentProvider {
    private static final String CREATE_TABLE = "CREATE TABLE settings(_id INTEGER PRIMARY KEY,widgetid INTEGER UNIQUE NOT NULL,color INTEGER,created INTEGER,modified INTEGER,mode INTEGER); ";
    private static final String DATABASE_NAME = "setting.db";
    private static final int DATABASE_VERSION = 8;
    private static final String NOTES_TABLE_NAME = "settings";
    private static final int SETTINGS = 1;
    private static final int SETTING_ID = 2;
    private static HashMap<String, String> sNotesProjectionMap;
    private static final UriMatcher sUriMatcher;
    private DatabaseHelper mOpenHelper;

    private static class DatabaseHelper extends SQLiteOpenHelper {
        DatabaseHelper(Context context) {
            super(context, SettingProvider.DATABASE_NAME, null, SettingProvider.DATABASE_VERSION);
            Log.e("DatabaseHelper   DatabaseHelper");
        }

        public void onCreate(SQLiteDatabase db) {
            Log.e("DatabaseHelper   onCreate");
            db.execSQL(SettingProvider.CREATE_TABLE);
        }

        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            Log.e("DatabaseHelper   onUpgrade" + oldVersion + "    " + newVersion);
            db.execSQL("DROP TABLE IF EXISTS settings");
            onCreate(db);
        }
    }

    static {
        sUriMatcher = new UriMatcher(-1);
        sUriMatcher.addURI(SettingColumns.AUTHORITY, NOTES_TABLE_NAME, SETTINGS);
        sUriMatcher.addURI(SettingColumns.AUTHORITY, "settings/#", SETTING_ID);
        sNotesProjectionMap = new HashMap();
        sNotesProjectionMap.put("_id", "_id");
        sNotesProjectionMap.put(SettingColumns.WIDGETID, SettingColumns.WIDGETID);
        sNotesProjectionMap.put(SettingColumns.COLOR, SettingColumns.COLOR);
        sNotesProjectionMap.put(SettingColumns.CREATEDDATE, SettingColumns.CREATEDDATE);
        sNotesProjectionMap.put(SettingColumns.MODIFIEDDATE, SettingColumns.MODIFIEDDATE);
        sNotesProjectionMap.put(SettingColumns.MODE, SettingColumns.MODE);
    }

    public boolean onCreate() {
        this.mOpenHelper = new DatabaseHelper(getContext());
        return true;
    }

    public int delete(Uri uri, String selection, String[] selectionArgs) {
        int count;
        SQLiteDatabase db = this.mOpenHelper.getWritableDatabase();
        switch (sUriMatcher.match(uri)) {
            case SETTINGS /*1*/:
                count = db.delete(NOTES_TABLE_NAME, selection, selectionArgs);
                break;
            case SETTING_ID /*2*/:
                count = db.delete(NOTES_TABLE_NAME, "_id=" + ((String) uri.getPathSegments().get(SETTINGS)) + (!TextUtils.isEmpty(selection) ? " AND (" + selection + ')' : ""), selectionArgs);
                break;
            default:
                throw new IllegalArgumentException("Unnown URI" + uri);
        }
        getContext().getContentResolver().notifyChange(uri, null);
        return count;
    }

    public String getType(Uri uri) {
        return null;
    }

    public Uri insert(Uri uri, ContentValues initialValues) {
        if (sUriMatcher.match(uri) != SETTINGS) {
            throw new IllegalArgumentException("Unknown URI " + uri);
        }
        ContentValues values;
        if (initialValues != null) {
            values = new ContentValues(initialValues);
        } else {
            values = new ContentValues();
        }
        Long now = Long.valueOf(System.currentTimeMillis());
        if (!values.containsKey(SettingColumns.CREATEDDATE)) {
            values.put(SettingColumns.CREATEDDATE, now);
        }
        if (!values.containsKey(SettingColumns.MODIFIEDDATE)) {
            values.put(SettingColumns.MODIFIEDDATE, now);
        }
        long rowId = this.mOpenHelper.getWritableDatabase().replace(NOTES_TABLE_NAME, SettingColumns.WIDGETID, values);
        if (rowId > 0) {
            Uri noteUri = ContentUris.withAppendedId(SettingColumns.CONTENT_URI, rowId);
            getContext().getContentResolver().notifyChange(noteUri, null);
            return noteUri;
        }
        throw new SQLException("Failed to insert row into" + uri);
    }

    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        String orderBy;
        SQLiteQueryBuilder qb = new SQLiteQueryBuilder();
        switch (sUriMatcher.match(uri)) {
            case SETTINGS /*1*/:
                qb.setTables(NOTES_TABLE_NAME);
                qb.setProjectionMap(sNotesProjectionMap);
                break;
            case SETTING_ID /*2*/:
                qb.setTables(NOTES_TABLE_NAME);
                qb.setProjectionMap(sNotesProjectionMap);
                qb.appendWhere("_id=" + ((String) uri.getPathSegments().get(SETTINGS)));
                break;
            default:
                throw new IllegalArgumentException("Unknown URI " + uri);
        }
        if (TextUtils.isEmpty(sortOrder)) {
            orderBy = SettingColumns.DEFAULT_SORT_ORDER;
        } else {
            orderBy = sortOrder;
        }
        Cursor c = qb.query(this.mOpenHelper.getReadableDatabase(), projection, selection, selectionArgs, null, null, orderBy);
        c.setNotificationUri(getContext().getContentResolver(), uri);
        return c;
    }

    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        SQLiteDatabase db = this.mOpenHelper.getWritableDatabase();
        switch (sUriMatcher.match(uri)) {
            case SETTINGS /*1*/:
                return db.update(NOTES_TABLE_NAME, values, selection, selectionArgs);
            case SETTING_ID /*2*/:
                return db.update(NOTES_TABLE_NAME, values, "_id=" + ((String) uri.getPathSegments().get(SETTINGS)) + (!TextUtils.isEmpty(selection) ? " AND (" + selection + ')' : ""), selectionArgs);
            default:
                throw new IllegalArgumentException("Unknow URI " + uri);
        }
    }
}
