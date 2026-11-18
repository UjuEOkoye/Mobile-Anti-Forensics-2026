.class Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;
.super Landroid/os/AsyncTask;
.source "ShredderData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Clear"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;",
        "Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

.field private final details:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;",
            ">;"
        }
    .end annotation
.end field

.field private file:Landroidx/documentfile/provider/DocumentFile;

.field private final mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

.field private totalBytesWritten:J


# direct methods
.method static bridge synthetic -$$Nest$fgetactivity(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;)Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    return-object p0
.end method

.method private constructor <init>(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;)V
    .locals 2

    .line 92
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-wide/16 v0, 0x0

    .line 87
    iput-wide v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->totalBytesWritten:J

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->details:Ljava/util/List;

    .line 93
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    .line 94
    invoke-static {p1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->-$$Nest$fgetmethod(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;)Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    move-result-object p1

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;Lcom/cbinnovations/androideraser/shredder/shred/ShredderData-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;-><init>(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;)V

    return-void
.end method

.method private clear(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;[IZ)J
    .locals 7

    .line 608
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->isCancelled()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 612
    :cond_0
    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 613
    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 615
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 616
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 617
    :cond_1
    invoke-direct {p0, p1, v5, p3, p4}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->clear(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;[IZ)J

    move-result-wide v5

    add-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 620
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->length()J

    move-result-wide v3

    add-long/2addr v1, v3

    if-eqz p4, :cond_3

    .line 621
    invoke-static {p1, p2}, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator;->delete(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;)V

    :cond_3
    return-wide v1

    .line 623
    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->override(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;[IZ)J

    move-result-wide p1

    return-wide p1

    :cond_5
    :goto_2
    return-wide v1
.end method

.method private clear(Ljava/io/File;[IZ)J
    .locals 7

    .line 470
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->isCancelled()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 474
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 475
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 477
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 478
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 479
    :cond_1
    invoke-direct {p0, v5, p2, p3}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->clear(Ljava/io/File;[IZ)J

    move-result-wide v5

    add-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 482
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v1, v3

    if-eqz p3, :cond_3

    .line 483
    iget-object p2, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    invoke-static {p2}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator;->delete(Landroid/content/Context;Ljava/io/File;)V

    :cond_3
    return-wide v1

    .line 485
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->override(Ljava/io/File;[IZ)J

    move-result-wide p1

    return-wide p1

    :cond_5
    :goto_2
    return-wide v1
.end method

.method private clearAndroidFolder(Landroidx/documentfile/provider/DocumentFile;)V
    .locals 2

    .line 845
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear$1;

    invoke-direct {v1, p0, p1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear$1;-><init>(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;Landroidx/documentfile/provider/DocumentFile;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private clearCache(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private deleteFile(Landroidx/documentfile/provider/DocumentFile;Z)J
    .locals 8

    .line 597
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Clearing DocumentFile: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 598
    :goto_0
    iget-object v4, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    iget v4, v4, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mCycles:I

    if-ge v3, v4, :cond_2

    .line 599
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 600
    :cond_0
    iget-object v4, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    invoke-static {v4}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    iget-object v5, v5, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mPattern:[[I

    aget-object v5, v5, v3

    if-eqz p2, :cond_1

    iget-object v6, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    iget v6, v6, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mCycles:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ne v3, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-direct {p0, v4, p1, v5, v7}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->clear(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;[IZ)J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 601
    new-array v4, v2, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    invoke-virtual {p0, v4}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-wide v0
.end method

.method private deleteFile(Ljava/io/File;Z)J
    .locals 7

    .line 459
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Clearing File: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 460
    :goto_0
    iget-object v4, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    iget v4, v4, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mCycles:I

    if-ge v3, v4, :cond_2

    .line 461
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 462
    :cond_0
    iget-object v4, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    iget-object v4, v4, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mPattern:[[I

    aget-object v4, v4, v3

    if-eqz p2, :cond_1

    iget-object v5, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    iget v5, v5, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mCycles:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v3, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-direct {p0, p1, v4, v6}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->clear(Ljava/io/File;[IZ)J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 463
    new-array v4, v2, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    invoke-virtual {p0, v4}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-wide v0
.end method

.method private deleteGeneratedFile()V
    .locals 3

    .line 866
    :try_start_0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->file:Landroidx/documentfile/provider/DocumentFile;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 867
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->file:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->file:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->removeBytes(Ljava/io/File;)V

    goto :goto_1

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->file:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 875
    :try_start_1
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->file:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v0

    const-wide/16 v1, 0xfa0

    .line 876
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 879
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 885
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private generateFile(Landroidx/documentfile/provider/DocumentFile;J[III)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move/from16 v4, p5

    .line 733
    iget-object v0, v1, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f11014c

    .line 734
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, ""

    invoke-virtual {v2, v7, v0}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    iput-object v0, v1, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->file:Landroidx/documentfile/provider/DocumentFile;

    const/4 v8, 0x0

    move/from16 v9, p6

    const/4 v10, 0x0

    :goto_0
    if-gt v10, v4, :cond_7

    .line 740
    invoke-virtual {v1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 744
    :cond_0
    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v11, v1, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->file:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v11}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v11

    const-string v12, "wa"

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    if-ge v10, v4, :cond_1

    .line 748
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FreeSpace for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 749
    new-array v11, v8, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    invoke-virtual {v1, v11}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    .line 752
    :cond_1
    new-array v11, v9, [B

    .line 753
    array-length v12, v3

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 754
    aget v12, v3, v8

    const/4 v13, -0x1

    if-eq v12, v13, :cond_2

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    .line 755
    invoke-static {v11, v12}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_3

    .line 757
    :cond_2
    new-instance v12, Ljava/security/SecureRandom;

    invoke-direct {v12}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v12, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v12, v9, :cond_5

    .line 762
    aget v15, v3, v14

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v11, v12

    .line 763
    array-length v15, v3

    sub-int/2addr v15, v13

    if-ne v14, v15, :cond_4

    const/4 v14, 0x0

    goto :goto_2

    :cond_4
    add-int/lit8 v14, v14, 0x1

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 771
    :cond_5
    :goto_3
    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write([B)V

    .line 772
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 773
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    if-ge v10, v4, :cond_6

    .line 776
    iget-wide v11, v1, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->totalBytesWritten:J

    add-long v11, v11, p2

    iput-wide v11, v1, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->totalBytesWritten:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    int-to-double v11, v9

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    mul-double v11, v11, v13

    .line 780
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v9, v11

    .line 781
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 782
    invoke-direct {v1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->deleteGeneratedFile()V

    .line 783
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    iput-object v0, v1, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->file:Landroidx/documentfile/provider/DocumentFile;

    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 841
    :cond_7
    :goto_5
    invoke-direct {v1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->deleteGeneratedFile()V

    return-void
.end method

.method private override(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;[IZ)J
    .locals 17

    move-object/from16 v1, p3

    move/from16 v2, p4

    .line 632
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v3, p0

    .line 634
    invoke-direct {v3, v0, v1, v2}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->override(Ljava/io/File;[IZ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    move-object/from16 v3, p0

    .line 637
    invoke-virtual/range {p2 .. p2}, Landroidx/documentfile/provider/DocumentFile;->length()J

    move-result-wide v4

    .line 638
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_1

    const-wide/32 v6, 0xc350

    :cond_1
    const/4 v10, 0x1

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    .line 643
    div-long/2addr v4, v6

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    add-int/2addr v0, v10

    move v4, v0

    goto :goto_0

    :cond_2
    move-wide v6, v4

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 647
    :goto_1
    const-string v0, "rw"

    if-ge v11, v4, :cond_9

    .line 648
    invoke-virtual {v3}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->isCancelled()Z

    move-result v12

    if-eqz v12, :cond_3

    goto/16 :goto_9

    :cond_3
    long-to-int v12, v6

    .line 650
    :try_start_0
    new-array v13, v12, [B

    .line 651
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 652
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 654
    array-length v15, v1

    if-ne v15, v10, :cond_5

    .line 655
    aget v12, v1, v5

    const/4 v15, -0x1

    if-eq v12, v15, :cond_4

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    .line 656
    invoke-static {v13, v12}, Ljava/util/Arrays;->fill([BB)V

    :goto_2
    const/16 v16, 0x1

    goto :goto_5

    .line 658
    :cond_4
    new-instance v12, Ljava/security/SecureRandom;

    invoke-direct {v12}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v12, v13}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    :goto_3
    if-ge v15, v12, :cond_7

    .line 663
    :try_start_1
    aget v5, v1, v10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v13, v15

    .line 664
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-ne v10, v5, :cond_6

    const/4 v10, 0x0

    goto :goto_4

    :cond_6
    add-int/lit8 v10, v10, 0x1

    :goto_4
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x0

    goto :goto_3

    .line 672
    :cond_7
    :goto_5
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    if-nez v11, :cond_8

    goto :goto_6

    :cond_8
    int-to-long v8, v11

    mul-long v8, v8, v6

    .line 673
    :goto_6
    invoke-virtual {v5, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 674
    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 675
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 676
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    const/16 v16, 0x1

    .line 678
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 686
    :cond_9
    :goto_9
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 687
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 688
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    const-wide/16 v8, 0x0

    .line 689
    invoke-virtual {v4, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/4 v5, 0x0

    .line 690
    new-array v5, v5, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 691
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 692
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    if-eqz v2, :cond_a

    .line 695
    invoke-static/range {p1 .. p2}, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator;->delete(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    .line 698
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_a
    return-wide v6
.end method

.method private override(Ljava/io/File;[IZ)J
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 494
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 495
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_0

    const-wide/32 v6, 0xc350

    :cond_0
    const-wide/32 v10, 0x7fffffff

    cmp-long v0, v6, v10

    if-lez v0, :cond_1

    move-wide v6, v10

    :cond_1
    const/4 v10, 0x1

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 504
    div-long/2addr v4, v6

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    add-int/2addr v0, v10

    move v4, v0

    goto :goto_0

    :cond_2
    move-wide v6, v4

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v11, v4, :cond_9

    .line 510
    invoke-virtual {v1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_7

    .line 512
    :cond_3
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v13, "rws"

    invoke-direct {v0, v2, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    long-to-int v13, v6

    .line 513
    new-array v14, v13, [B

    .line 514
    array-length v15, v3

    if-ne v15, v10, :cond_5

    .line 515
    aget v13, v3, v5

    const/4 v15, -0x1

    if-eq v13, v15, :cond_4

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    .line 516
    invoke-static {v14, v13}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_4

    .line 518
    :cond_4
    new-instance v13, Ljava/security/SecureRandom;

    invoke-direct {v13}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v13, v14}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_2
    if-ge v15, v13, :cond_7

    .line 523
    aget v8, v3, v5

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v14, v15

    .line 524
    array-length v8, v3

    sub-int/2addr v8, v10

    if-ne v5, v8, :cond_6

    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v5, 0x1

    :goto_3
    add-int/lit8 v15, v15, 0x1

    const-wide/16 v8, 0x0

    goto :goto_2

    :cond_7
    :goto_4
    if-nez v11, :cond_8

    const-wide/16 v8, 0x0

    goto :goto_5

    :cond_8
    int-to-long v8, v11

    mul-long v8, v8, v6

    .line 531
    :goto_5
    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 532
    invoke-virtual {v0, v14}, Ljava/io/RandomAccessFile;->write([B)V

    .line 533
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 537
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v12, 0x1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 535
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_6
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    goto :goto_1

    .line 541
    :cond_9
    :goto_7
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    if-eqz p3, :cond_d

    .line 551
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez v12, :cond_c

    .line 552
    invoke-direct/range {p0 .. p1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->overrideMFT(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    const/4 v5, 0x0

    :goto_8
    const/4 v6, 0x2

    if-ge v5, v6, :cond_b

    .line 554
    invoke-virtual {v1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_9

    .line 555
    :cond_a
    invoke-direct {v1, v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->overrideMFT(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 557
    :cond_b
    :goto_9
    iget-object v5, v1, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    invoke-static {v5}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator;->delete(Landroid/content/Context;Ljava/io/File;)V

    .line 559
    :cond_c
    iget-object v0, v1, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator;->delete(Landroid/content/Context;Ljava/io/File;)V

    :cond_d
    return-wide v3
.end method

.method private overrideMFT(Ljava/io/File;)Ljava/io/File;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x400

    if-gt v1, v2, :cond_1

    .line 568
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 570
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 571
    new-array v3, v1, [B

    const/4 v4, -0x1

    .line 572
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 573
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 574
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 576
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 581
    :cond_1
    :goto_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v2, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    invoke-static {v2}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SessionIdentifierGenerator;->delete(Landroid/content/Context;Ljava/io/File;)V

    .line 584
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 585
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 586
    new-array v0, v0, [B

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 587
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    return-object p1
.end method

.method private removeBytes(Ljava/io/File;)V
    .locals 3

    .line 891
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    .line 892
    new-array v1, v1, [B

    .line 893
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 894
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 896
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 901
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    .line 905
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 906
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Still there"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/16 v1, 0xfa0

    .line 907
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 910
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private startFreeSpace(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;II)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v5, p3

    .line 711
    iget-object v1, v7, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->granted:Landroidx/documentfile/provider/DocumentFile;

    iget-object v2, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    invoke-static {v2}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f11014c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v1

    iput-object v1, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->file:Landroidx/documentfile/provider/DocumentFile;

    .line 712
    invoke-direct {v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->deleteGeneratedFile()V

    .line 714
    iget-object v1, v7, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->original:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cbinnovations/androideraser/shredder/Storage;->getAvailableSize(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-lez v1, :cond_4

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 716
    :goto_0
    iget-object v1, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    iget v1, v1, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mCycles:I

    if-ge v13, v1, :cond_4

    .line 717
    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 720
    :cond_0
    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->freespace:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    move-object/from16 v14, p1

    if-ne v14, v1, :cond_1

    const/4 v1, 0x1

    .line 721
    new-array v1, v1, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    new-instance v15, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    invoke-static {v3}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;)Landroid/content/Context;

    move-result-object v3

    .line 722
    invoke-virtual {v14}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->getTitle()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    iget v3, v3, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mCycles:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    iget-object v2, v7, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->granted:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v16, 0x1

    const/16 v17, -0x1

    invoke-direct/range {v15 .. v20}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;-><init>(ZILjava/lang/String;Ljava/lang/String;Lcom/cbinnovations/androideraser/shredder/shred/ShredderData-IA;)V

    aput-object v15, v1, v12

    .line 721
    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    .line 723
    :cond_1
    iget-object v1, v7, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->granted:Landroidx/documentfile/provider/DocumentFile;

    if-lez v5, :cond_2

    int-to-long v2, v5

    div-long v2, v8, v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-long v2, v2

    goto :goto_1

    :cond_2
    move-wide v2, v10

    :goto_1
    iget-object v4, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    iget-object v4, v4, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mPattern:[[I

    aget-object v4, v4, v13

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->generateFile(Landroidx/documentfile/provider/DocumentFile;J[III)V

    if-gtz p3, :cond_3

    .line 725
    iget-wide v1, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->totalBytesWritten:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->totalBytesWritten:J

    :cond_3
    add-int/lit8 v13, v13, 0x1

    move/from16 v5, p3

    goto/16 :goto_0

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;)Ljava/lang/Long;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 106
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1f

    aget-object v5, v1, v4

    .line 107
    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_17

    .line 112
    :cond_0
    :try_start_0
    iget-object v6, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    invoke-static {v6}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    invoke-virtual {v7}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->getTitle()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 113
    :catch_0
    const-string v6, ""

    :goto_1
    move-object v10, v6

    .line 116
    sget-object v6, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$1;->$SwitchMap$com$cbinnovations$androideraser$shredder$search$adapter$GroupItem$Type:[I

    iget-object v7, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    invoke-virtual {v7}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const-string v13, "File does not exist"

    const-string v14, "File cannot be overwritten"

    const-string v15, "File cannot be deleted"

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v6, :pswitch_data_0

    :cond_1
    :goto_2
    move/from16 v21, v2

    const/4 v8, 0x0

    goto/16 :goto_16

    .line 382
    :pswitch_0
    new-instance v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;

    invoke-direct {v6}, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;-><init>()V

    .line 383
    iget-object v9, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    invoke-virtual {v9}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->name()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->type:Ljava/lang/String;

    .line 384
    iput-boolean v8, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->success:Z

    const/4 v13, 0x0

    .line 386
    :goto_3
    iget-object v9, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->data:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v13, v9, :cond_6

    .line 387
    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_6

    .line 390
    :cond_2
    iget-object v9, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->data:Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;

    .line 391
    iget-object v9, v15, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->granted:Landroidx/documentfile/provider/DocumentFile;

    .line 392
    invoke-virtual {v9}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->name:Ljava/lang/String;

    .line 393
    iget-object v11, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->name:Ljava/lang/String;

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 394
    iget-object v11, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    invoke-static {v11}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f11009d

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->name:Ljava/lang/String;

    .line 397
    :cond_3
    invoke-virtual {v9}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v9}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_4

    .line 405
    :cond_4
    new-array v9, v8, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    move-object v11, v7

    new-instance v7, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    iget-object v12, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->max:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v8, v15, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->original:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v8}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v17, v9

    move v9, v12

    const/4 v12, 0x0

    move-object/from16 v18, v11

    move-object v11, v8

    const/4 v8, 0x1

    move-object/from16 v3, v17

    const/4 v1, 0x1

    const/16 v19, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;-><init>(ZILjava/lang/String;Ljava/lang/String;Lcom/cbinnovations/androideraser/shredder/shred/ShredderData-IA;)V

    aput-object v7, v3, v19

    invoke-virtual {v0, v3}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    .line 406
    sget-object v3, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->freespace:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    iget-object v7, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->max:Ljava/util/ArrayList;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    invoke-static {v8}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->-$$Nest$fgetmethod(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;)Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    move-result-object v8

    iget v8, v8, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mCycles:I

    div-int/2addr v7, v8

    iget-object v8, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->maxMemory:Ljava/util/ArrayList;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v0, v3, v15, v7, v8}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->startFreeSpace(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;II)V

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 398
    iput-boolean v3, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->success:Z

    .line 399
    iput-object v14, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->errorMessage:Ljava/lang/String;

    .line 400
    new-array v7, v1, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    new-instance v8, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    iget-object v11, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    const/4 v12, 0x0

    invoke-direct {v8, v1, v11, v9, v12}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;-><init>(ZLcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Ljava/lang/Object;Lcom/cbinnovations/androideraser/shredder/shred/ShredderData-IA;)V

    aput-object v8, v7, v3

    invoke-virtual {v0, v7}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    .line 401
    iget-object v3, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->details:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_3

    .line 409
    :cond_6
    :goto_6
    iget-object v1, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->details:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_1
    const/4 v1, 0x1

    .line 344
    new-instance v3, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;

    invoke-direct {v3}, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;-><init>()V

    .line 345
    iget-object v6, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    invoke-virtual {v6}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->name()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->type:Ljava/lang/String;

    .line 346
    iput-boolean v1, v3, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->success:Z

    const/4 v6, 0x0

    .line 347
    :goto_7
    iget-object v7, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->data:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_b

    .line 348
    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_7

    goto/16 :goto_a

    .line 352
    :cond_7
    iget-object v7, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->data:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;

    .line 353
    iget-object v15, v13, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->granted:Landroidx/documentfile/provider/DocumentFile;

    .line 354
    invoke-virtual {v15}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->name:Ljava/lang/String;

    .line 356
    invoke-virtual {v15}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v15}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_8

    .line 364
    :cond_8
    new-array v7, v1, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    move-object v8, v7

    new-instance v7, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    iget-object v9, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->max:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v11, v13, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->original:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v11}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v16, v8

    const/4 v8, 0x1

    move-object/from16 v1, v16

    invoke-direct/range {v7 .. v12}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;-><init>(ZILjava/lang/String;Ljava/lang/String;Lcom/cbinnovations/androideraser/shredder/shred/ShredderData-IA;)V

    const/16 v19, 0x0

    aput-object v7, v1, v19

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    const/4 v1, 0x1

    .line 367
    invoke-direct {v0, v15, v1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->deleteFile(Landroidx/documentfile/provider/DocumentFile;Z)J

    .line 369
    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_a

    .line 370
    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->completeErase:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    iget-object v7, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->max:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    invoke-static {v8}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->-$$Nest$fgetmethod(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;)Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    move-result-object v8

    iget v8, v8, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mCycles:I

    div-int/2addr v7, v8

    iget-object v8, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->maxMemory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v0, v1, v13, v7, v8}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->startFreeSpace(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;II)V

    .line 371
    invoke-direct {v0, v15}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->clearAndroidFolder(Landroidx/documentfile/provider/DocumentFile;)V

    goto :goto_9

    :cond_9
    :goto_8
    const/4 v1, 0x0

    .line 357
    iput-boolean v1, v3, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->success:Z

    .line 358
    iput-object v14, v3, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->errorMessage:Ljava/lang/String;

    const/4 v7, 0x1

    .line 359
    new-array v8, v7, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    new-instance v9, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    iget-object v11, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    const/4 v12, 0x0

    invoke-direct {v9, v7, v11, v15, v12}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;-><init>(ZLcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Ljava/lang/Object;Lcom/cbinnovations/androideraser/shredder/shred/ShredderData-IA;)V

    aput-object v9, v8, v1

    invoke-virtual {v0, v8}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    .line 360
    iget-object v1, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->details:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_9
    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x1

    goto/16 :goto_7

    .line 377
    :cond_b
    :goto_a
    iget-object v1, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->details:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 305
    :pswitch_2
    iget-object v1, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 306
    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_c

    goto/16 :goto_2

    .line 309
    :cond_c
    new-instance v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;

    invoke-direct {v6}, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;-><init>()V

    .line 310
    iget-object v7, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    invoke-virtual {v7}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->name()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->type:Ljava/lang/String;

    const/4 v7, 0x1

    .line 311
    iput-boolean v7, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->success:Z

    .line 312
    move-object v8, v3

    check-cast v8, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;

    .line 313
    invoke-virtual {v8}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;->isFile()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 314
    invoke-virtual {v8}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;->getAppName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->name:Ljava/lang/String;

    .line 315
    new-instance v9, Ljava/io/File;

    invoke-virtual {v8}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;->getFile()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    new-array v11, v7, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    new-instance v20, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    iget-object v7, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    iget v7, v7, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mCycles:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;->getAppName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v21, 0x1

    move/from16 v22, v7

    invoke-direct/range {v20 .. v25}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;-><init>(ZILjava/lang/String;Ljava/lang/String;Lcom/cbinnovations/androideraser/shredder/shred/ShredderData-IA;)V

    const/4 v7, 0x0

    aput-object v20, v11, v7

    invoke-virtual {v0, v11}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    .line 318
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_d

    .line 319
    iput-boolean v7, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->success:Z

    .line 320
    iput-object v13, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->errorMessage:Ljava/lang/String;

    goto :goto_b

    .line 325
    :cond_d
    iget-wide v11, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->totalBytesWritten:J

    const/4 v8, 0x1

    invoke-direct {v0, v9, v8}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->deleteFile(Ljava/io/File;Z)J

    move-result-wide v16

    add-long v11, v11, v16

    iput-wide v11, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->totalBytesWritten:J

    .line 326
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 327
    iput-boolean v7, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->success:Z

    .line 328
    iput-object v15, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->errorMessage:Ljava/lang/String;

    .line 330
    new-array v9, v8, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    new-instance v11, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    iget-object v12, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    const/4 v14, 0x0

    invoke-direct {v11, v8, v12, v3, v14}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;-><init>(ZLcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Ljava/lang/Object;Lcom/cbinnovations/androideraser/shredder/shred/ShredderData-IA;)V

    aput-object v11, v9, v7

    invoke-virtual {v0, v9}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    .line 336
    :cond_e
    iget-object v3, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->details:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 281
    :pswitch_3
    iget-object v1, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 282
    new-instance v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;

    invoke-direct {v6}, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;-><init>()V

    .line 283
    iget-object v7, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    invoke-virtual {v7}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->name()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->type:Ljava/lang/String;

    const/4 v7, 0x1

    .line 284
    iput-boolean v7, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->success:Z

    .line 285
    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_f

    goto/16 :goto_2

    .line 288
    :cond_f
    move-object v13, v3

    check-cast v13, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Music$Struct;

    .line 289
    invoke-virtual {v13}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Music$Struct;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->name:Ljava/lang/String;

    .line 290
    new-array v14, v7, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    new-instance v7, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    iget-object v8, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    iget v9, v8, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mCycles:I

    invoke-virtual {v13}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Music$Struct;->getPath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v7 .. v12}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;-><init>(ZILjava/lang/String;Ljava/lang/String;Lcom/cbinnovations/androideraser/shredder/shred/ShredderData-IA;)V

    const/16 v19, 0x0

    aput-object v7, v14, v19

    invoke-virtual {v0, v14}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    .line 291
    new-instance v7, Ljava/io/File;

    invoke-virtual {v13}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Music$Struct;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    iget-wide v8, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->totalBytesWritten:J

    const/4 v11, 0x1

    invoke-direct {v0, v7, v11}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->deleteFile(Ljava/io/File;Z)J

    move-result-wide v12

    add-long/2addr v8, v12

    iput-wide v8, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->totalBytesWritten:J

    .line 293
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 294
    iput-object v15, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->errorMessage:Ljava/lang/String;

    const/4 v7, 0x0

    .line 295
    iput-boolean v7, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->success:Z

    .line 297
    new-array v8, v11, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    new-instance v9, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    iget-object v12, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    const/4 v14, 0x0

    invoke-direct {v9, v11, v12, v3, v14}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;-><init>(ZLcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Ljava/lang/Object;Lcom/cbinnovations/androideraser/shredder/shred/ShredderData-IA;)V

    aput-object v9, v8, v7

    invoke-virtual {v0, v8}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    .line 299
    :cond_10
    iget-object v3, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->details:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 255
    :pswitch_4
    iget-object v1, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 256
    new-instance v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;

    invoke-direct {v6}, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;-><init>()V

    .line 257
    iget-object v7, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    invoke-virtual {v7}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->name()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->type:Ljava/lang/String;

    const/4 v7, 0x1

    .line 258
    iput-boolean v7, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->success:Z

    .line 259
    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_11

    goto/16 :goto_2

    .line 262
    :cond_11
    move-object v13, v3

    check-cast v13, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Videos$Struct;

    .line 263
    invoke-virtual {v13}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Videos$Struct;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->name:Ljava/lang/String;

    .line 264
    new-array v14, v7, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    new-instance v7, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    iget-object v8, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    iget v9, v8, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mCycles:I

    invoke-virtual {v13}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Videos$Struct;->getPath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v7 .. v12}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;-><init>(ZILjava/lang/String;Ljava/lang/String;Lcom/cbinnovations/androideraser/shredder/shred/ShredderData-IA;)V

    const/16 v19, 0x0

    aput-object v7, v14, v19

    invoke-virtual {v0, v14}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    .line 265
    new-instance v7, Ljava/io/File;

    invoke-virtual {v13}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Videos$Struct;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    iget-wide v8, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->totalBytesWritten:J

    const/4 v11, 0x1

    invoke-direct {v0, v7, v11}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->deleteFile(Ljava/io/File;Z)J

    move-result-wide v12

    add-long/2addr v8, v12

    iput-wide v8, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->totalBytesWritten:J

    .line 267
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 268
    iput-object v15, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->errorMessage:Ljava/lang/String;

    const/4 v7, 0x0

    .line 269
    iput-boolean v7, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->success:Z

    .line 271
    new-array v8, v11, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    new-instance v9, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    iget-object v12, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    const/4 v14, 0x0

    invoke-direct {v9, v11, v12, v3, v14}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;-><init>(ZLcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Ljava/lang/Object;Lcom/cbinnovations/androideraser/shredder/shred/ShredderData-IA;)V

    aput-object v9, v8, v7

    invoke-virtual {v0, v8}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    .line 273
    :cond_12
    iget-object v3, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->details:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 230
    :pswitch_5
    iget-object v1, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 231
    new-instance v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;

    invoke-direct {v6}, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;-><init>()V

    .line 232
    iget-object v7, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    invoke-virtual {v7}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->name()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->type:Ljava/lang/String;

    const/4 v7, 0x1

    .line 233
    iput-boolean v7, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->success:Z

    .line 234
    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_13

    goto/16 :goto_2

    .line 237
    :cond_13
    move-object v13, v3

    check-cast v13, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Photos$Struct;

    .line 238
    invoke-virtual {v13}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Photos$Struct;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->name:Ljava/lang/String;

    .line 239
    new-array v14, v7, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    new-instance v7, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    iget-object v8, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    iget v9, v8, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mCycles:I

    invoke-virtual {v13}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Photos$Struct;->getPath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v7 .. v12}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;-><init>(ZILjava/lang/String;Ljava/lang/String;Lcom/cbinnovations/androideraser/shredder/shred/ShredderData-IA;)V

    const/16 v19, 0x0

    aput-object v7, v14, v19

    invoke-virtual {v0, v14}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    .line 240
    new-instance v7, Ljava/io/File;

    invoke-virtual {v13}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Photos$Struct;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    iget-wide v8, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->totalBytesWritten:J

    const/4 v11, 0x1

    invoke-direct {v0, v7, v11}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->deleteFile(Ljava/io/File;Z)J

    move-result-wide v12

    add-long/2addr v8, v12

    iput-wide v8, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->totalBytesWritten:J

    .line 242
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 243
    iput-object v15, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->errorMessage:Ljava/lang/String;

    const/4 v7, 0x0

    .line 244
    iput-boolean v7, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->success:Z

    .line 246
    new-array v8, v11, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    new-instance v9, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    iget-object v12, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    const/4 v14, 0x0

    invoke-direct {v9, v11, v12, v3, v14}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;-><init>(ZLcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Ljava/lang/Object;Lcom/cbinnovations/androideraser/shredder/shred/ShredderData-IA;)V

    aput-object v9, v8, v7

    invoke-virtual {v0, v8}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    .line 248
    :cond_14
    iget-object v3, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->details:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 205
    :pswitch_6
    new-instance v1, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;

    invoke-direct {v1}, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;-><init>()V

    .line 206
    iget-object v3, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    invoke-virtual {v3}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->name()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->type:Ljava/lang/String;

    const/4 v7, 0x1

    .line 207
    iput-boolean v7, v1, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->success:Z

    .line 208
    iget-object v3, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 209
    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_15

    goto/16 :goto_11

    .line 212
    :cond_15
    move-object v13, v6

    check-cast v13, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Struct;

    .line 213
    invoke-virtual {v13}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Struct;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->name:Ljava/lang/String;

    const/4 v7, 0x1

    .line 214
    new-array v14, v7, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    new-instance v7, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    invoke-static {v9}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;)Landroid/content/Context;

    move-result-object v9

    const v11, 0x7f110063

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Struct;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct/range {v7 .. v12}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;-><init>(ZILjava/lang/String;Ljava/lang/String;Lcom/cbinnovations/androideraser/shredder/shred/ShredderData-IA;)V

    const/16 v19, 0x0

    aput-object v7, v14, v19

    invoke-virtual {v0, v14}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    .line 215
    iget-object v7, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    invoke-static {v7}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v13}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Struct;->getLookup()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;->clear(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 216
    iget-wide v6, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->totalBytesWritten:J

    iget-object v8, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    invoke-static {v8}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->-$$Nest$fgetmethod(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;)Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    move-result-object v8

    iget v8, v8, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mCycles:I

    int-to-long v8, v8

    const-wide/16 v11, 0x1057

    mul-long v8, v8, v11

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->totalBytesWritten:J

    const/4 v7, 0x0

    goto :goto_10

    :cond_16
    const/4 v7, 0x0

    .line 218
    iput-boolean v7, v1, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->success:Z

    const/4 v11, 0x1

    .line 219
    new-array v8, v11, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    new-instance v9, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    iget-object v12, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    const/4 v14, 0x0

    invoke-direct {v9, v11, v12, v6, v14}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;-><init>(ZLcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Ljava/lang/Object;Lcom/cbinnovations/androideraser/shredder/shred/ShredderData-IA;)V

    aput-object v9, v8, v7

    invoke-virtual {v0, v8}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    .line 221
    :goto_10
    new-array v6, v7, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    invoke-virtual {v0, v6}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    goto/16 :goto_f

    .line 224
    :cond_17
    :goto_11
    iget-object v3, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->details:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 190
    :pswitch_7
    new-instance v1, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;

    invoke-direct {v1}, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;-><init>()V

    .line 191
    iget-object v3, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    invoke-static {v3}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;)Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f11004b

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->name:Ljava/lang/String;

    .line 192
    iget-object v3, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    invoke-virtual {v3}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->name()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->type:Ljava/lang/String;

    const/4 v7, 0x1

    .line 193
    iput-boolean v7, v1, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->success:Z

    .line 194
    new-array v3, v7, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    new-instance v7, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    iget-object v5, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    invoke-static {v5}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct/range {v7 .. v12}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;-><init>(ZILjava/lang/String;Ljava/lang/String;Lcom/cbinnovations/androideraser/shredder/shred/ShredderData-IA;)V

    const/16 v19, 0x0

    aput-object v7, v3, v19

    invoke-virtual {v0, v3}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    .line 195
    iget-object v3, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    invoke-static {v3}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/ClipBoard;->clear(Landroid/content/Context;)V

    .line 196
    iget-wide v5, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->totalBytesWritten:J

    iget-object v3, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    invoke-static {v3}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->-$$Nest$fgetmethod(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;)Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    move-result-object v3

    iget v3, v3, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mCycles:I

    int-to-long v7, v3

    const-wide/16 v9, 0x200

    mul-long v7, v7, v9

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->totalBytesWritten:J

    const/4 v7, 0x0

    .line 197
    new-array v3, v7, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    invoke-virtual {v0, v3}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    .line 198
    iget-object v3, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->details:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 125
    :pswitch_8
    iget-object v1, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 126
    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_18

    goto/16 :goto_2

    .line 129
    :cond_18
    new-instance v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;

    invoke-direct {v6}, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;-><init>()V

    .line 130
    iput-object v10, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->type:Ljava/lang/String;

    const/4 v7, 0x1

    .line 131
    iput-boolean v7, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->success:Z

    .line 133
    instance-of v8, v3, Landroidx/documentfile/provider/DocumentFile;

    if-eqz v8, :cond_1c

    .line 134
    move-object v8, v3

    check-cast v8, Landroidx/documentfile/provider/DocumentFile;

    .line 135
    invoke-virtual {v8}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->name:Ljava/lang/String;

    .line 136
    new-array v9, v7, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    new-instance v7, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    iget-object v11, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    iget v11, v11, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mCycles:I

    move-object v12, v9

    move v9, v11

    invoke-virtual {v8}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v16, v12

    const/4 v12, 0x0

    move-object/from16 v20, v8

    const/4 v8, 0x1

    move-object/from16 v21, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v21

    move-object/from16 v21, v20

    invoke-direct/range {v7 .. v12}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;-><init>(ZILjava/lang/String;Ljava/lang/String;Lcom/cbinnovations/androideraser/shredder/shred/ShredderData-IA;)V

    const/4 v8, 0x0

    aput-object v7, v1, v8

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    .line 138
    invoke-virtual/range {v21 .. v21}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v1

    if-nez v1, :cond_19

    .line 139
    iput-boolean v8, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->success:Z

    .line 140
    iput-object v13, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->errorMessage:Ljava/lang/String;

    .line 141
    iget-object v1, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->details:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_13
    move-object/from16 v1, v16

    goto :goto_12

    .line 145
    :cond_19
    invoke-virtual/range {v21 .. v21}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 146
    iput-boolean v8, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->success:Z

    .line 147
    iput-object v14, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->errorMessage:Ljava/lang/String;

    .line 148
    iget-object v1, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->details:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    .line 150
    new-array v1, v7, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    new-instance v6, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    iget-object v9, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    const/4 v12, 0x0

    invoke-direct {v6, v7, v9, v3, v12}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;-><init>(ZLcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Ljava/lang/Object;Lcom/cbinnovations/androideraser/shredder/shred/ShredderData-IA;)V

    aput-object v6, v1, v8

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    goto :goto_13

    :cond_1a
    const/4 v7, 0x1

    .line 154
    iget-wide v11, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->totalBytesWritten:J

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->deleteFile(Landroidx/documentfile/provider/DocumentFile;Z)J

    move-result-wide v19

    add-long v11, v11, v19

    iput-wide v11, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->totalBytesWritten:J

    .line 155
    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 156
    iput-boolean v8, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->success:Z

    .line 157
    iput-object v15, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->errorMessage:Ljava/lang/String;

    .line 158
    new-array v1, v7, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    new-instance v9, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    iget-object v11, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    const/4 v12, 0x0

    invoke-direct {v9, v7, v11, v3, v12}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;-><init>(ZLcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Ljava/lang/Object;Lcom/cbinnovations/androideraser/shredder/shred/ShredderData-IA;)V

    aput-object v9, v1, v8

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    .line 160
    :cond_1b
    iget-object v1, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->details:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v21, v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v12, 0x0

    goto :goto_14

    :cond_1c
    move-object/from16 v16, v1

    .line 163
    new-instance v1, Ljava/io/File;

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    iput-object v7, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->name:Ljava/lang/String;

    const/4 v7, 0x1

    .line 165
    new-array v8, v7, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    new-instance v7, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    iget-object v9, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    iget v9, v9, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mCycles:I

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v20, v8

    const/4 v8, 0x1

    move/from16 v21, v2

    move-object/from16 v2, v20

    invoke-direct/range {v7 .. v12}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;-><init>(ZILjava/lang/String;Ljava/lang/String;Lcom/cbinnovations/androideraser/shredder/shred/ShredderData-IA;)V

    const/4 v8, 0x0

    aput-object v7, v2, v8

    invoke-virtual {v0, v2}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    .line 167
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 168
    iput-boolean v8, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->success:Z

    .line 169
    iput-object v13, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->errorMessage:Ljava/lang/String;

    .line 170
    iget-object v1, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->details:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_14
    move-object/from16 v1, v16

    move/from16 v2, v21

    goto/16 :goto_12

    .line 175
    :cond_1d
    iget-wide v11, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->totalBytesWritten:J

    const/4 v7, 0x1

    invoke-direct {v0, v1, v7}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->deleteFile(Ljava/io/File;Z)J

    move-result-wide v19

    add-long v11, v11, v19

    iput-wide v11, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->totalBytesWritten:J

    .line 176
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 177
    iput-boolean v8, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->success:Z

    .line 178
    iput-object v15, v6, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->errorMessage:Ljava/lang/String;

    .line 179
    new-array v1, v7, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    new-instance v2, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    iget-object v9, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    const/4 v12, 0x0

    invoke-direct {v2, v7, v9, v3, v12}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;-><init>(ZLcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Ljava/lang/Object;Lcom/cbinnovations/androideraser/shredder/shred/ShredderData-IA;)V

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    goto :goto_15

    :cond_1e
    const/4 v12, 0x0

    .line 181
    :goto_15
    iget-object v1, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->details:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :goto_16
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v21

    goto/16 :goto_0

    .line 418
    :cond_1f
    :goto_17
    iget-wide v1, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->totalBytesWritten:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
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

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 84
    check-cast p1, [Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->doInBackground([Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled(Ljava/lang/Long;)V
    .locals 4

    .line 445
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 446
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->hasShredderListener()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->onShredderFinishedListener:Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener$OnShredderNewListener;

    if-nez p1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->isCancelled()Z

    move-result p1

    iget-object v3, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->details:Ljava/util/List;

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener$OnShredderNewListener;->onShredderFinished(JZLjava/util/List;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 84
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onCancelled(Ljava/lang/Long;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 4

    .line 439
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 440
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->hasShredderListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->onShredderFinishedListener:Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener$OnShredderNewListener;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->isCancelled()Z

    move-result p1

    iget-object v3, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->details:Ljava/util/List;

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener$OnShredderNewListener;->onShredderFinished(JZLjava/util/List;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 84
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 98
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 99
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->hasShredderListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->onShredderFinishedListener:Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener$OnShredderNewListener;

    invoke-interface {v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener$OnShredderNewListener;->onShredderStarted()V

    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V
    .locals 4

    .line 422
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 423
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->hasShredderListener()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 424
    array-length v0, p1

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 425
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    iget-object v1, v1, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->onShredderFinishedListener:Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener$OnShredderNewListener;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->getType()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    move-result-object v2

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->getObject()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener$OnShredderNewListener;->errorOccurred(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Ljava/lang/Object;)V

    return-void

    .line 427
    :cond_0
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->-$$Nest$misNewObject(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    iget-object v1, v1, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->onShredderFinishedListener:Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener$OnShredderNewListener;

    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->-$$Nest$mgetCurrentType(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-static {v3}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->-$$Nest$mgetCurrentObject(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)Ljava/lang/String;

    move-result-object v3

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->getMax()I

    move-result p1

    invoke-interface {v1, v2, v3, p1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener$OnShredderNewListener;->onShredderStartedObject(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 430
    :cond_1
    iget-object p1, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->onShredderFinishedListener:Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener$OnShredderNewListener;

    invoke-interface {p1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener$OnShredderNewListener;->updateTotalProgress()V

    return-void

    .line 433
    :cond_2
    iget-object p1, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->activity:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->onShredderFinishedListener:Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener$OnShredderNewListener;

    invoke-interface {p1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener$OnShredderNewListener;->updateTotalProgress()V

    :cond_3
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 84
    check-cast p1, [Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->onProgressUpdate([Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)V

    return-void
.end method
