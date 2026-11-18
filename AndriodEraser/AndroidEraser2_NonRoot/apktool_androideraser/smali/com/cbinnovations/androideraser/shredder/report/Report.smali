.class public Lcom/cbinnovations/androideraser/shredder/report/Report;
.super Ljava/lang/Object;
.source "Report.java"


# static fields
.field private static final AB:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field public static final SAVEKEY_REPORTS:Ljava/lang/String; = "savekey_reports"


# instance fields
.field private appCode:I

.field private appVersion:Ljava/lang/String;

.field private final deviceVersion:Ljava/lang/String;

.field private final endTime:Ljava/lang/String;

.field private final errors:I

.field private final id:Ljava/lang/String;

.field private final method:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

.field private final reportDetail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;",
            ">;"
        }
    .end annotation
.end field

.field private final startTime:Ljava/lang/String;

.field private final success:Z

.field private final totalBytes:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;Ljava/util/Date;JZLjava/lang/String;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;",
            "Ljava/util/Date;",
            "JZ",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 41
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/report/Report;->appVersion:Ljava/lang/String;

    .line 42
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput p1, p0, Lcom/cbinnovations/androideraser/shredder/report/Report;->appCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 49
    :goto_0
    iput-object p7, p0, Lcom/cbinnovations/androideraser/shredder/report/Report;->id:Ljava/lang/String;

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, " ("

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p7, ")"

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/report/Report;->deviceVersion:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shredder/report/Report;->method:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    .line 52
    invoke-static {}, Lcom/cbinnovations/androideraser/shredder/report/Report;->dateFormat()Ljava/text/SimpleDateFormat;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/report/Report;->startTime:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/cbinnovations/androideraser/shredder/report/Report;->dateFormat()Ljava/text/SimpleDateFormat;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/report/Report;->endTime:Ljava/lang/String;

    .line 54
    iput-wide p4, p0, Lcom/cbinnovations/androideraser/shredder/report/Report;->totalBytes:J

    .line 55
    iput-boolean p6, p0, Lcom/cbinnovations/androideraser/shredder/report/Report;->success:Z

    .line 56
    iput p8, p0, Lcom/cbinnovations/androideraser/shredder/report/Report;->errors:I

    .line 57
    iput-object p9, p0, Lcom/cbinnovations/androideraser/shredder/report/Report;->reportDetail:Ljava/util/List;

    return-void
.end method

.method public static add(Landroid/content/Context;Lcom/cbinnovations/androideraser/shredder/report/Report;)V
    .locals 3

    .line 71
    new-instance v0, Lcom/cbinnovations/androideraser/utils/TinyDB;

    invoke-direct {v0, p0}, Lcom/cbinnovations/androideraser/utils/TinyDB;-><init>(Landroid/content/Context;)V

    .line 72
    const-class p0, Lcom/cbinnovations/androideraser/shredder/report/Report;

    const-string v1, "savekey_reports"

    invoke-virtual {v0, v1, p0}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getListObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v2, 0x0

    .line 73
    invoke-virtual {p0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 74
    invoke-virtual {v0, v1, p0}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putListObject(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/cbinnovations/androideraser/shredder/report/Report;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cbinnovations/androideraser/shredder/report/Report;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/cbinnovations/androideraser/shredder/report/ReportRow;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f110072

    .line 84
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->createSection(Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f1100cd

    .line 85
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/report/Report;->getMethod()Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    move-result-object v2

    iget-object v2, v2, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mValue:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;

    invoke-virtual {v2, p0}, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->createRow(Ljava/lang/String;Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f11006e

    .line 86
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/report/Report;->getMethod()Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    move-result-object v2

    iget v2, v2, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mCycles:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->createRow(Ljava/lang/String;Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f110036

    .line 87
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/report/Report;->getTotalBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->createRow(Ljava/lang/String;Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f110157

    .line 88
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/report/Report;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->createRow(Ljava/lang/String;Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f11007f

    .line 89
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/report/Report;->getEndTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->createRow(Ljava/lang/String;Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f11013a

    .line 90
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/report/Report;->isSuccess()Z

    move-result v2

    const v3, 0x7f110160

    if-eqz v2, :cond_0

    const v2, 0x7f110160

    goto :goto_0

    :cond_0
    const v2, 0x7f110041

    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->createRow(Ljava/lang/String;Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->createSpacer()Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/report/Report;->getFileDetails()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 95
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;

    .line 96
    iget-object v4, v2, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->name:Ljava/lang/String;

    iget-boolean v2, v2, Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;->success:Z

    if-eqz v2, :cond_1

    const v2, 0x7f110160

    goto :goto_2

    :cond_1
    const v2, 0x7f110090

    :goto_2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->createRow(Ljava/lang/String;Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const v1, 0x7f110075

    .line 100
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->createSection(Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f110162

    .line 101
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Android OS"

    invoke-static {v1, v2}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->createRow(Ljava/lang/String;Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f11016f

    .line 102
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/report/Report;->getDeviceVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->createRow(Ljava/lang/String;Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f11002f

    .line 103
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/utils/Utility;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->createRow(Ljava/lang/String;Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f1100cf

    .line 104
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->createRow(Ljava/lang/String;Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f110074

    .line 105
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->createRow(Ljava/lang/String;Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f110028

    .line 106
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->createRow(Ljava/lang/String;Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f110099

    .line 107
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->createRow(Ljava/lang/String;Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f110035

    .line 108
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteOrder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->createRow(Ljava/lang/String;Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f11016a

    .line 109
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->createRow(Ljava/lang/String;Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f110169

    .line 110
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cbinnovations/androideraser/shredder/Storage;->getTotalSize(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/cbinnovations/androideraser/shredder/Storage;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->createRow(Ljava/lang/String;Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f110147

    .line 111
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->createRow(Ljava/lang/String;Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static dateFormat()Ljava/text/SimpleDateFormat;
    .locals 3

    .line 61
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static generateID()Ljava/lang/String;
    .locals 5

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 120
    const-string v2, "CB-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    const/16 v3, 0xe

    if-eq v2, v3, :cond_1

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 125
    :cond_0
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const-string v4, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 123
    :cond_1
    :goto_1
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;I)Lcom/cbinnovations/androideraser/shredder/report/Report;
    .locals 2

    .line 78
    new-instance v0, Lcom/cbinnovations/androideraser/utils/TinyDB;

    invoke-direct {v0, p0}, Lcom/cbinnovations/androideraser/utils/TinyDB;-><init>(Landroid/content/Context;)V

    const-string p0, "savekey_reports"

    const-class v1, Lcom/cbinnovations/androideraser/shredder/report/Report;

    invoke-virtual {v0, p0, v1}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getListObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cbinnovations/androideraser/shredder/report/Report;

    return-object p0
.end method

.method public static randomString()Ljava/lang/String;
    .locals 5

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    const/16 v3, 0xe

    if-eq v2, v3, :cond_1

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 138
    :cond_0
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const-string v4, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 136
    :cond_1
    :goto_1
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppCode()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/cbinnovations/androideraser/shredder/report/Report;->appCode:I

    return v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/report/Report;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceVersion()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/report/Report;->deviceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/report/Report;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFileDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cbinnovations/androideraser/shredder/report/ReportDetailModel;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/report/Report;->reportDetail:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/report/Report;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/report/Report;->method:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/report/Report;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 2

    .line 175
    iget-wide v0, p0, Lcom/cbinnovations/androideraser/shredder/report/Report;->totalBytes:J

    return-wide v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/cbinnovations/androideraser/shredder/report/Report;->success:Z

    return v0
.end method
