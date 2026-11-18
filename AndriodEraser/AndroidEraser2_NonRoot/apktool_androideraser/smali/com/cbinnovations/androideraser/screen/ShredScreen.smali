.class public Lcom/cbinnovations/androideraser/screen/ShredScreen;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ShredScreen.java"


# instance fields
.field private mData:[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

.field protected mServerConn:Landroid/content/ServiceConnection;

.field private mService:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

.field public selectedFiles:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmData(Lcom/cbinnovations/androideraser/screen/ShredScreen;)[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen;->mData:[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmData(Lcom/cbinnovations/androideraser/screen/ShredScreen;[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;)V
    .locals 0

    iput-object p1, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen;->mData:[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/cbinnovations/androideraser/screen/ShredScreen;Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen;->mService:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen;->selectedFiles:J

    .line 35
    new-instance v0, Lcom/cbinnovations/androideraser/screen/ShredScreen$1;

    invoke-direct {v0, p0}, Lcom/cbinnovations/androideraser/screen/ShredScreen$1;-><init>(Lcom/cbinnovations/androideraser/screen/ShredScreen;)V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen;->mServerConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method private bindService()V
    .locals 3

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    iget-object v1, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen;->mServerConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/cbinnovations/androideraser/screen/ShredScreen;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 80
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/screen/ShredScreen;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private restartApp()V
    .locals 3

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    const-string v1, "SHOW"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/screen/ShredScreen;->finish()V

    .line 67
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/screen/ShredScreen;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getData()[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen;->mData:[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen;->mData:[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 0

    .line 46
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 47
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/screen/ShredScreen;->bindService()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 51
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 52
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen;->mService:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen;->mServerConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/screen/ShredScreen;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;",
            ">;)V"
        }
    .end annotation

    .line 92
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen;->mData:[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

    return-void
.end method

.method public startProcess(Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;)V
    .locals 9

    .line 96
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen;->mService:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    if-eqz v0, :cond_1

    .line 97
    iget-wide v0, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen;->selectedFiles:J

    invoke-static {p0, v0, v1}, Lcom/cbinnovations/androideraser/SubCheckActivity;->canDelete(Landroid/content/Context;J)Lcom/cbinnovations/androideraser/Limit$Pair;

    move-result-object v0

    .line 98
    iget-boolean v1, v0, Lcom/cbinnovations/androideraser/Limit$Pair;->canDelete:Z

    if-eqz v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen;->mService:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen;->mData:[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

    invoke-virtual {v0, p1, v1}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->createProcess(Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;)V

    .line 100
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/screen/ShredScreen;->restartApp()V

    return-void

    .line 103
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f110042

    .line 104
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 105
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const v3, 0x7f1100d0

    invoke-virtual {p0, v3}, Lcom/cbinnovations/androideraser/screen/ShredScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Lcom/cbinnovations/androideraser/Limit$Pair;->current:J

    invoke-static {v4, v5}, Lcom/cbinnovations/androideraser/shredder/Storage;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v0, Lcom/cbinnovations/androideraser/Limit$Pair;->current:J

    iget-wide v7, p0, Lcom/cbinnovations/androideraser/screen/ShredScreen;->selectedFiles:J

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Lcom/cbinnovations/androideraser/shredder/Storage;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v4, 0x1

    aput-object v0, v5, v4

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/screen/ShredScreen$2;

    invoke-direct {v1, p0, p1}, Lcom/cbinnovations/androideraser/screen/ShredScreen$2;-><init>(Lcom/cbinnovations/androideraser/screen/ShredScreen;Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;)V

    const p1, 0x7f110069

    .line 106
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 126
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 130
    :cond_1
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/screen/ShredScreen;->bindService()V

    return-void
.end method
