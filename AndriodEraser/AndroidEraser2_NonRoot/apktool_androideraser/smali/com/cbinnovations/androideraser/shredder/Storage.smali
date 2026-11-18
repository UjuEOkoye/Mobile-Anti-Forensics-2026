.class public Lcom/cbinnovations/androideraser/shredder/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 268
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 269
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 270
    aget-object v2, v0, v1

    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 281
    :cond_1
    new-instance p0, Ljava/io/File;

    const-string v0, "/storage/emulated/0/Android"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAvailableSize(Ljava/lang/String;)J
    .locals 2

    .line 182
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getChildItemSize(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)J
    .locals 6

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->getObjects()[Ljava/lang/Object;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 65
    invoke-static {p0, v4}, Lcom/cbinnovations/androideraser/shredder/Storage;->getObjectSize(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Ljava/lang/Object;)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static getChildItemSize(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)J
    .locals 6

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 55
    :cond_0
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 56
    invoke-static {p0, v4}, Lcom/cbinnovations/androideraser/shredder/Storage;->getChildItemSize(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static getChildItemsSize([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)J
    .locals 7

    .line 44
    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p0, v3

    .line 45
    invoke-virtual {v4}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getReason()Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getReason()Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    move-result-object v5

    sget-object v6, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->success:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    if-eq v5, v6, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    invoke-virtual {v4}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getTotalByteSize()J

    move-result-wide v4

    add-long/2addr v1, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public static getDefaultImageCacheDir(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 302
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/cbinnovations/androideraser/shredder/Storage;->getApplicationDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, "data"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 304
    invoke-static {p0}, Lcom/cbinnovations/androideraser/shredder/Storage;->getDefaultImagePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 305
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_0
    const-string v2, "com.sec.android.gallery3d"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 311
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private static getDefaultImagePackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 290
    new-instance v0, Landroid/content/Intent;

    const-string v1, "content://media/internal/images/media"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 292
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 293
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return-object p0

    .line 297
    :catch_0
    :cond_0
    const-string p0, "com.sec.android.gallery3d"

    return-object p0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 214
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileSize(Landroidx/documentfile/provider/DocumentFile;)J
    .locals 6

    .line 168
    invoke-virtual {p0}, Landroidx/documentfile/provider/DocumentFile;->length()J

    move-result-wide v0

    .line 169
    invoke-virtual {p0}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {p0}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 172
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    .line 173
    invoke-static {v4}, Lcom/cbinnovations/androideraser/shredder/Storage;->getFileSize(Landroidx/documentfile/provider/DocumentFile;)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static getFileSize(Ljava/io/File;)J
    .locals 6

    .line 155
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 156
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 159
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    .line 160
    invoke-static {v4}, Lcom/cbinnovations/androideraser/shredder/Storage;->getFileSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 218
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-static {p0}, Lcom/cbinnovations/androideraser/shredder/Storage;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getObjectSize(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Ljava/lang/Object;)J
    .locals 1

    .line 82
    :try_start_0
    sget-object v0, Lcom/cbinnovations/androideraser/shredder/Storage$1;->$SwitchMap$com$cbinnovations$androideraser$shredder$search$adapter$GroupItem$Type:[I

    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    .line 144
    :pswitch_0
    check-cast p1, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;

    iget-object p0, p1, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->original:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cbinnovations/androideraser/shredder/Storage;->getTotalSize(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    .line 140
    :pswitch_1
    check-cast p1, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;

    iget-object p0, p1, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->original:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/cbinnovations/androideraser/shredder/Storage;->getAvailableSize(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :pswitch_2
    const-wide/16 p0, 0x1092

    return-wide p0

    :pswitch_3
    const-wide/32 p0, 0xe055

    return-wide p0

    :pswitch_4
    const-wide/32 p0, 0xa37d

    return-wide p0

    :pswitch_5
    const-wide/16 p0, 0x67e6

    return-wide p0

    .line 114
    :pswitch_6
    check-cast p1, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;

    .line 115
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;->isFile()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 116
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/cbinnovations/androideraser/shredder/Storage;->getFileSize(Ljava/io/File;)J

    move-result-wide p0

    return-wide p0

    .line 119
    :cond_0
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;->getSize()J

    move-result-wide p0

    return-wide p0

    .line 108
    :pswitch_7
    check-cast p1, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Videos$Struct;

    .line 109
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Videos$Struct;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/cbinnovations/androideraser/shredder/Storage;->getFileSize(Ljava/io/File;)J

    move-result-wide p0

    return-wide p0

    .line 102
    :pswitch_8
    check-cast p1, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Music$Struct;

    .line 103
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Music$Struct;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/cbinnovations/androideraser/shredder/Storage;->getFileSize(Ljava/io/File;)J

    move-result-wide p0

    return-wide p0

    .line 96
    :pswitch_9
    check-cast p1, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Photos$Struct;

    .line 97
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Photos$Struct;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/cbinnovations/androideraser/shredder/Storage;->getFileSize(Ljava/io/File;)J

    move-result-wide p0

    return-wide p0

    .line 91
    :pswitch_a
    new-instance p0, Ljava/io/File;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/cbinnovations/androideraser/shredder/Storage;->getFileSize(Ljava/io/File;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSelectedItemSize(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->getSelectedData()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 74
    invoke-static {p0, v2}, Lcom/cbinnovations/androideraser/shredder/Storage;->getObjectSize(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Ljava/lang/Object;)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static getTotalSize(Ljava/lang/String;)J
    .locals 2

    .line 196
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static humanReadableByteCount(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 31
    invoke-static {p0, p1, v0}, Lcom/cbinnovations/androideraser/shredder/Storage;->humanReadableByteCount(JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static humanReadableByteCount(JZ)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, 0x400

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " B"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    long-to-double p0, p0

    .line 37
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    double-to-int v0, v0

    add-int/lit8 v1, v0, -0x1

    .line 38
    const-string v4, "KMGTPE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .line 39
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    if-eqz p2, :cond_1

    const-string p2, "%.1f %sB"

    goto :goto_0

    :cond_1
    const-string p2, "%.1f"

    :goto_0
    int-to-double v5, v0

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const/4 p0, 0x1

    aput-object v1, p1, p0

    invoke-static {v4, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static nameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 210
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static openFile(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;)V
    .locals 3

    .line 223
    :try_start_0
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 224
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 228
    :cond_0
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cbinnovations/androideraser/shredder/Storage;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 229
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    .line 230
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 231
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-nez p1, :cond_1

    .line 232
    const-string v2, "*/*"

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p1, :cond_2

    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f110121

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 236
    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const p1, 0x7f110085

    const/4 v0, 0x0

    .line 239
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static openFile(Landroid/content/Context;Ljava/io/File;)V
    .locals 3

    .line 245
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 246
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 250
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cbinnovations/androideraser/shredder/Storage;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 251
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    .line 252
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 253
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-nez p1, :cond_1

    .line 254
    const-string v2, "*/*"

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p1, :cond_2

    .line 256
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f110121

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 258
    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const p1, 0x7f110085

    const/4 v0, 0x0

    .line 261
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
