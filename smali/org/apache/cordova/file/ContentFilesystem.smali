.class public Lorg/apache/cordova/file/ContentFilesystem;
.super Lorg/apache/cordova/file/Filesystem;
.source "ContentFilesystem.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/apache/cordova/CordovaResourceApi;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceApi"    # Lorg/apache/cordova/CordovaResourceApi;

    .prologue
    .line 40
    const-string v0, "content://"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "content"

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/cordova/file/Filesystem;-><init>(Landroid/net/Uri;Ljava/lang/String;Lorg/apache/cordova/CordovaResourceApi;)V

    .line 41
    iput-object p1, p0, Lorg/apache/cordova/file/ContentFilesystem;->context:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private resourceSizeForCursor(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 183
    const-string v2, "_size"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 184
    .local v0, "columnIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 185
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "sizeStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 187
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 190
    .end local v1    # "sizeStr":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public URLforFilesystemPath(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public canRemoveFileAtLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Z
    .locals 1
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;

    .prologue
    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method public filesystemPathForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Lorg/apache/cordova/file/LocalFilesystemURL;

    .prologue
    .line 209
    iget-object v1, p0, Lorg/apache/cordova/file/ContentFilesystem;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/file/ContentFilesystem;->toNativeUri(Lorg/apache/cordova/file/LocalFilesystemURL;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CordovaResourceApi;->mapUriToFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 210
    .local v0, "f":Ljava/io/File;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFileForLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 2
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "options"    # Lorg/json/JSONObject;
    .param p4, "directory"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/TypeMismatchException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getFile() not supported for content:. Use resolveLocalFileSystemURL instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFileMetadataForLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/json/JSONObject;
    .locals 17
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 121
    const-wide/16 v12, -0x1

    .line 122
    .local v12, "size":J
    const-wide/16 v6, 0x0

    .line 123
    .local v6, "lastModified":J
    invoke-virtual/range {p0 .. p1}, Lorg/apache/cordova/file/ContentFilesystem;->toNativeUri(Lorg/apache/cordova/file/LocalFilesystemURL;)Landroid/net/Uri;

    move-result-object v10

    .line 124
    .local v10, "nativeUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/cordova/file/ContentFilesystem;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    invoke-virtual {v15, v10}, Lorg/apache/cordova/CordovaResourceApi;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/apache/cordova/file/ContentFilesystem;->openCursorForURL(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    .line 127
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_3

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 128
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/cordova/file/ContentFilesystem;->resourceSizeForCursor(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v14

    .line 129
    .local v14, "sizeForCursor":Ljava/lang/Long;
    if-eqz v14, :cond_0

    .line 130
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 132
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/cordova/file/ContentFilesystem;->lastModifiedDateForCursor(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v9

    .line 133
    .local v9, "modified":Ljava/lang/Long;
    if-eqz v9, :cond_1

    .line 134
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 145
    .end local v9    # "modified":Ljava/lang/Long;
    .end local v14    # "sizeForCursor":Ljava/lang/Long;
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 146
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 151
    .local v5, "metadata":Lorg/json/JSONObject;
    :try_start_1
    const-string v15, "size"

    invoke-virtual {v5, v15, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 152
    const-string v15, "type"

    invoke-virtual {v5, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string v15, "name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/file/ContentFilesystem;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v15, "fullPath"

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v15, "lastModifiedDate"

    invoke-virtual {v5, v15, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    .end local v5    # "metadata":Lorg/json/JSONObject;
    :goto_1
    return-object v5

    .line 137
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/cordova/file/ContentFilesystem;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    invoke-virtual {v15, v10}, Lorg/apache/cordova/CordovaResourceApi;->openForRead(Landroid/net/Uri;)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    move-result-object v11

    .line 138
    .local v11, "offr":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    iget-wide v12, v11, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->length:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 140
    .end local v11    # "offr":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    :catch_0
    move-exception v3

    .line 141
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    .line 142
    .local v4, "fnfe":Ljava/io/FileNotFoundException;
    invoke-virtual {v4, v3}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 143
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fnfe":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v15

    if-eqz v2, :cond_4

    .line 146
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v15

    .line 156
    .restart local v5    # "metadata":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    .line 157
    .local v3, "e":Lorg/json/JSONException;
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected lastModifiedDateForCursor(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, -0x1

    .line 194
    const-string v2, "date_modified"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 195
    .local v0, "columnIndex":I
    if-ne v0, v3, :cond_0

    .line 196
    const-string v2, "last_modified"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 198
    :cond_0
    if-eq v0, v3, :cond_1

    .line 199
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "dateStr":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 201
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 204
    .end local v1    # "dateStr":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public listChildren(Lorg/apache/cordova/file/LocalFilesystemURL;)[Lorg/apache/cordova/file/LocalFilesystemURL;
    .locals 2
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "readEntriesAtLocalURL() not supported for content:. Use resolveLocalFileSystemURL instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected openCursorForURL(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 8
    .param p1, "nativeUri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    .line 174
    iget-object v1, p0, Lorg/apache/cordova/file/ContentFilesystem;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 176
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 178
    :goto_0
    return-object v1

    .line 177
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 178
    goto :goto_0
.end method

.method public recursiveRemoveFileAtLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Z
    .locals 2
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/NoModificationAllowedException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lorg/apache/cordova/file/NoModificationAllowedException;

    const-string v1, "Cannot remove content url"

    invoke-direct {v0, v1}, Lorg/apache/cordova/file/NoModificationAllowedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeFileAtLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Z
    .locals 6
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/NoModificationAllowedException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lorg/apache/cordova/file/ContentFilesystem;->toNativeUri(Lorg/apache/cordova/file/LocalFilesystemURL;)Landroid/net/Uri;

    move-result-object v0

    .line 96
    .local v0, "contentUri":Landroid/net/Uri;
    :try_start_0
    iget-object v3, p0, Lorg/apache/cordova/file/ContentFilesystem;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    const/4 v3, 0x1

    return v3

    .line 97
    :catch_0
    move-exception v2

    .line 101
    .local v2, "t":Ljava/lang/UnsupportedOperationException;
    new-instance v1, Lorg/apache/cordova/file/NoModificationAllowedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting not supported for content uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/cordova/file/NoModificationAllowedException;-><init>(Ljava/lang/String;)V

    .line 102
    .local v1, "nmae":Lorg/apache/cordova/file/NoModificationAllowedException;
    invoke-virtual {v1, v2}, Lorg/apache/cordova/file/NoModificationAllowedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 103
    throw v1
.end method

.method public toLocalUri(Landroid/net/Uri;)Lorg/apache/cordova/file/LocalFilesystemURL;
    .locals 5
    .param p1, "inputURL"    # Landroid/net/Uri;

    .prologue
    .line 64
    const-string v3, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    const/4 v3, 0x0

    .line 82
    :goto_0
    return-object v3

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "subPath":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 69
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 71
    :cond_1
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "cdvfile"

    .line 72
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "localhost"

    .line 73
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/cordova/file/ContentFilesystem;->name:Ljava/lang/String;

    .line 74
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 75
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 76
    .local v0, "b":Landroid/net/Uri$Builder;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 77
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 79
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 80
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 81
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 82
    .local v1, "localUri":Landroid/net/Uri;
    invoke-static {v1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Landroid/net/Uri;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v3

    goto :goto_0
.end method

.method public toNativeUri(Lorg/apache/cordova/file/LocalFilesystemURL;)Landroid/net/Uri;
    .locals 6
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;

    .prologue
    .line 46
    iget-object v4, p1, Lorg/apache/cordova/file/LocalFilesystemURL;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/cordova/file/ContentFilesystem;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "authorityAndPath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 48
    const/4 v4, 0x0

    .line 59
    :goto_0
    return-object v4

    .line 50
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "ret":Ljava/lang/String;
    iget-object v4, p1, Lorg/apache/cordova/file/LocalFilesystemURL;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "query":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 55
    :cond_1
    iget-object v4, p1, Lorg/apache/cordova/file/LocalFilesystemURL;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "frag":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    :cond_2
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0
.end method

.method public truncateFileAtURL(Lorg/apache/cordova/file/LocalFilesystemURL;J)J
    .locals 2
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .param p2, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/NoModificationAllowedException;
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Lorg/apache/cordova/file/NoModificationAllowedException;

    const-string v1, "Couldn\'t truncate file given its content URI"

    invoke-direct {v0, v1}, Lorg/apache/cordova/file/NoModificationAllowedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToFileAtURL(Lorg/apache/cordova/file/LocalFilesystemURL;Ljava/lang/String;IZ)J
    .locals 2
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "isBinary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/NoModificationAllowedException;
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Lorg/apache/cordova/file/NoModificationAllowedException;

    const-string v1, "Couldn\'t write to file given its content URI"

    invoke-direct {v0, v1}, Lorg/apache/cordova/file/NoModificationAllowedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
