.class public Lcom/cbinnovations/androideraser/shred/ShredderNotification;
.super Ljava/lang/Object;
.source "ShredderNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/shred/ShredderNotification$PrepareFiles;
    }
.end annotation


# instance fields
.field private currentProgress:I

.field private mData:[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

.field private final mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

.field private final mError:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPrepareFiles:Lcom/cbinnovations/androideraser/shred/ShredderNotification$PrepareFiles;

.field private mShredderData:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

.field private maxProgress:I

.field private notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field private notificationID:I

.field private runningInForeground:Z

.field private final service:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

.field private final startTime:Ljava/util/Date;

.field private stopped:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrentProgress(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)I
    .locals 0

    iget p0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->currentProgress:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmError(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->mError:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmaxProgress(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)I
    .locals 0

    iget p0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->maxProgress:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetservice(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->service:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentProgress(Lcom/cbinnovations/androideraser/shred/ShredderNotification;I)V
    .locals 0

    iput p1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->currentProgress:I

    return-void
.end method

.method public constructor <init>(Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;Ljava/util/ArrayList;Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;",
            "Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;",
            "Ljava/util/ArrayList<",
            "Landroidx/documentfile/provider/DocumentFile;",
            ">;",
            "Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->mError:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->maxProgress:I

    .line 43
    iput v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->currentProgress:I

    .line 44
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->runningInForeground:Z

    .line 45
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->stopped:Z

    .line 49
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->service:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    .line 50
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    .line 51
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->startTime:Ljava/util/Date;

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->notificationID:I

    .line 53
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->initShredder()V

    .line 54
    new-instance p1, Lcom/cbinnovations/androideraser/shred/ShredderNotification$PrepareFiles;

    invoke-direct {p1, p0, p3}, Lcom/cbinnovations/androideraser/shred/ShredderNotification$PrepareFiles;-><init>(Lcom/cbinnovations/androideraser/shred/ShredderNotification;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->mPrepareFiles:Lcom/cbinnovations/androideraser/shred/ShredderNotification$PrepareFiles;

    .line 55
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p3, 0x1

    new-array p3, p3, [Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;

    aput-object p4, p3, v0

    invoke-virtual {p1, p2, p3}, Lcom/cbinnovations/androideraser/shred/ShredderNotification$PrepareFiles;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public constructor <init>(Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->mError:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->maxProgress:I

    .line 43
    iput v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->currentProgress:I

    .line 44
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->runningInForeground:Z

    .line 45
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->stopped:Z

    .line 59
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->service:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    .line 60
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    .line 61
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->startTime:Ljava/util/Date;

    .line 62
    invoke-virtual {p0, p3}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->setData([Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;)V

    .line 63
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->initShredder()V

    return-void
.end method

.method private initShredder()V
    .locals 3

    .line 67
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->service:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    iget-object v2, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    invoke-direct {v0, v1, v2}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;-><init>(Landroid/content/Context;Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;)V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->mShredderData:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    .line 68
    new-instance v1, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/shred/ShredderNotification$1;-><init>(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)V

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->setOnShredderNewListener(Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener$OnShredderNewListener;)V

    return-void
.end method


# virtual methods
.method public getChanelId()Ljava/lang/String;
    .locals 4

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->service:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    const v2, 0x7f110023

    invoke-virtual {v1, v2}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_Channel_Id_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->notificationID:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProgress()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->currentProgress:I

    return v0
.end method

.method public getEraseMethod()Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    return-object v0
.end method

.method public getError()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->mError:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMaxProgress()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->maxProgress:I

    return v0
.end method

.method public getNotificationBuilder()Landroidx/core/app/NotificationCompat$Builder;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    return-object v0
.end method

.method public getNotificationID()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->notificationID:I

    return v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public hasStopped()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->stopped:Z

    return v0
.end method

.method public isRunningInForeground()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->runningInForeground:Z

    return v0
.end method

.method public isStopped()Z
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->mShredderData:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->isStopped()Z

    move-result v0

    return v0
.end method

.method public setData([Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;)V
    .locals 5

    .line 153
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->mData:[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

    .line 154
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 155
    iget v3, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->maxProgress:I

    iget-object v4, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    iget v4, v4, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mCycles:I

    invoke-virtual {v2, v4}, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->getSize(I)I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->maxProgress:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setNotificationBuilder(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method public setRunningInForeground(Z)V
    .locals 0

    .line 196
    iput-boolean p1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->runningInForeground:Z

    return-void
.end method

.method public start()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->mPrepareFiles:Lcom/cbinnovations/androideraser/shred/ShredderNotification$PrepareFiles;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->mPrepareFiles:Lcom/cbinnovations/androideraser/shred/ShredderNotification$PrepareFiles;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->mData:[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 139
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->mShredderData:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->mData:[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->start([Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->mPrepareFiles:Lcom/cbinnovations/androideraser/shred/ShredderNotification$PrepareFiles;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification$PrepareFiles;->cancel(Z)Z

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->mShredderData:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->stop()V

    .line 145
    iput-boolean v1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->stopped:Z

    return-void
.end method
