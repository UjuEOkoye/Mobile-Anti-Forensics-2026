.class public Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator;
.super Ljava/lang/Object;
.source "SessionIdentifierGenerator.java"


# direct methods
.method static bridge synthetic -$$Nest$smremove(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator;->remove(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 70
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 75
    invoke-static {p0, v3}, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator;->delete(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator;->nextSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/documentfile/provider/DocumentFile;->renameTo(Ljava/lang/String;)Z

    .line 81
    invoke-static {p0, p1}, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator;->scanMedia(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;)V

    .line 82
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    :cond_1
    return-void
.end method

.method public static delete(Landroid/content/Context;Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x1

    .line 24
    invoke-static {p0, p1, v0}, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator;->delete(Landroid/content/Context;Ljava/io/File;Z)V

    return-void
.end method

.method public static delete(Landroid/content/Context;Ljava/io/File;Z)V
    .locals 4

    if-eqz p1, :cond_2

    .line 28
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 33
    invoke-static {p0, v3}, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator;->delete(Landroid/content/Context;Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 42
    invoke-static {p0, p1}, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator;->scanMedia(Landroid/content/Context;Ljava/io/File;)V

    .line 44
    :cond_1
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator;->nextSessionId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public static nextSessionId()Ljava/lang/String;
    .locals 1

    .line 20
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static remove(Landroid/content/Context;Ljava/io/File;)V
    .locals 5

    .line 55
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "_data=?"

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 62
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v4, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static scanMedia(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;)V
    .locals 3

    .line 104
    const-string v0, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static scanMedia(Landroid/content/Context;Ljava/io/File;)V
    .locals 2

    .line 89
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator$1;

    invoke-direct {v1, p0, p1}, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator$1;-><init>(Landroid/content/Context;Ljava/io/File;)V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
