.class public Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;
.super Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener;
.source "ShredderData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;,
        Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;
    }
.end annotation


# instance fields
.field private clearProcess:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;

.field private final context:Landroid/content/Context;

.field private method:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmethod(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;)Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->method:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderDataListener;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->context:Landroid/content/Context;

    .line 52
    invoke-virtual {p0, p2}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->setMethod(Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;)V

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->clearProcess:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStopped()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->clearProcess:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public setMethod(Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;)V
    .locals 1

    .line 72
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->method:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    .line 73
    new-instance p1, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;-><init>(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;Lcom/cbinnovations/androideraser/shredder/shred/ShredderData-IA;)V

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->clearProcess:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;

    return-void
.end method

.method public start([Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->clearProcess:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;->clearProcess:Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$Clear;->cancel(Z)Z

    :cond_0
    return-void
.end method
