.class public Lcom/cbinnovations/androideraser/NavigationController;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "NavigationController.java"


# instance fields
.field public adapter:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

.field public horizontalScrollView:Landroid/widget/HorizontalScrollView;

.field public mActionMode:Landroid/view/ActionMode;

.field protected mServerConn:Landroid/content/ServiceConnection;

.field private mService:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

.field public navigation:Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;

.field public notDisplay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public selectedFiles:J

.field public tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;


# direct methods
.method static bridge synthetic -$$Nest$fputmService(Lcom/cbinnovations/androideraser/NavigationController;Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/cbinnovations/androideraser/NavigationController;->mService:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/NavigationController;->notDisplay:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/cbinnovations/androideraser/NavigationController;->selectedFiles:J

    .line 41
    new-instance v0, Lcom/cbinnovations/androideraser/NavigationController$1;

    invoke-direct {v0, p0}, Lcom/cbinnovations/androideraser/NavigationController$1;-><init>(Lcom/cbinnovations/androideraser/NavigationController;)V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/NavigationController;->mServerConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method private initOnCreate()V
    .locals 3

    .line 63
    new-instance v0, Lcom/cbinnovations/androideraser/utils/TinyDB;

    invoke-direct {v0, p0}, Lcom/cbinnovations/androideraser/utils/TinyDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/NavigationController;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    .line 64
    const-string v1, "cb_language"

    const-string v2, "en"

    invoke-virtual {v0, v1, v2}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cbinnovations/androideraser/utils/Language;->load(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private setNavigation()V
    .locals 2

    const v0, 0x7f0800d1

    .line 74
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/NavigationController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;

    iput-object v0, p0, Lcom/cbinnovations/androideraser/NavigationController;->navigation:Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;

    const v0, 0x7f0800ff

    .line 75
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/NavigationController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/cbinnovations/androideraser/NavigationController;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    const v0, 0x7f0800d0

    .line 77
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/NavigationController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/NavigationController$2;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/NavigationController$2;-><init>(Lcom/cbinnovations/androideraser/NavigationController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bindService()V
    .locals 3

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    iget-object v1, p0, Lcom/cbinnovations/androideraser/NavigationController;->mServerConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/cbinnovations/androideraser/NavigationController;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 150
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/NavigationController;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method synthetic lambda$startProcess$0$com-cbinnovations-androideraser-NavigationController(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 106
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/NavigationController;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/cbinnovations/androideraser/NavigationController;->navigation:Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/cbinnovations/androideraser/NavigationController;->navigation:Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->previous()Landroidx/documentfile/provider/DocumentFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->jumpToItem(Landroidx/documentfile/provider/DocumentFile;)V

    return-void

    .line 137
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001c

    .line 57
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/NavigationController;->setContentView(I)V

    .line 58
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/NavigationController;->initOnCreate()V

    .line 59
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/NavigationController;->setNavigation()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 123
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 124
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/NavigationController;->bindService()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 128
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 129
    iget-object v0, p0, Lcom/cbinnovations/androideraser/NavigationController;->mService:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/cbinnovations/androideraser/NavigationController;->mServerConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/NavigationController;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public showNext(Landroidx/documentfile/provider/DocumentFile;)V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/cbinnovations/androideraser/NavigationController;->navigation:Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;

    new-instance v1, Lcom/cbinnovations/androideraser/NavigationController$3;

    invoke-direct {v1, p0, p1}, Lcom/cbinnovations/androideraser/NavigationController$3;-><init>(Lcom/cbinnovations/androideraser/NavigationController;Landroidx/documentfile/provider/DocumentFile;)V

    const v2, 0x7f0b0025

    invoke-virtual {v0, p1, v2, v1}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->addItem(Landroidx/documentfile/provider/DocumentFile;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public startProcess(Landroidx/documentfile/provider/DocumentFile;Ljava/util/ArrayList;Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/documentfile/provider/DocumentFile;",
            "Ljava/util/ArrayList<",
            "Landroidx/documentfile/provider/DocumentFile;",
            ">;",
            "Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;",
            ")V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/cbinnovations/androideraser/NavigationController;->mService:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    if-eqz v0, :cond_3

    .line 94
    iget-wide v0, p0, Lcom/cbinnovations/androideraser/NavigationController;->selectedFiles:J

    invoke-static {p0, v0, v1}, Lcom/cbinnovations/androideraser/SubCheckActivity;->canDelete(Landroid/content/Context;J)Lcom/cbinnovations/androideraser/Limit$Pair;

    move-result-object v0

    .line 95
    iget-boolean v1, v0, Lcom/cbinnovations/androideraser/Limit$Pair;->canDelete:Z

    if-eqz v1, :cond_2

    .line 96
    iget-object v0, p0, Lcom/cbinnovations/androideraser/NavigationController;->mService:Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    new-instance v1, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;

    iget-object v2, p0, Lcom/cbinnovations/androideraser/NavigationController;->navigation:Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;

    invoke-virtual {v2}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->getCurrentRoot()Landroidx/documentfile/provider/DocumentFile;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;-><init>(Landroidx/documentfile/provider/DocumentFile;Landroidx/documentfile/provider/DocumentFile;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->createProcessWithPrepare(Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;Ljava/util/ArrayList;Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;)V

    .line 97
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/documentfile/provider/DocumentFile;

    .line 98
    iget-object p3, p0, Lcom/cbinnovations/androideraser/NavigationController;->notDisplay:Ljava/util/ArrayList;

    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/cbinnovations/androideraser/NavigationController;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_1
    return-void

    .line 102
    :cond_2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f110042

    .line 103
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 104
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const p3, 0x7f1100d0

    invoke-virtual {p0, p3}, Lcom/cbinnovations/androideraser/NavigationController;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-wide v1, v0, Lcom/cbinnovations/androideraser/Limit$Pair;->current:J

    invoke-static {v1, v2}, Lcom/cbinnovations/androideraser/shredder/Storage;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v0, Lcom/cbinnovations/androideraser/Limit$Pair;->current:J

    iget-wide v4, p0, Lcom/cbinnovations/androideraser/NavigationController;->selectedFiles:J

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/cbinnovations/androideraser/shredder/Storage;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-static {p2, p3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/cbinnovations/androideraser/NavigationController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/cbinnovations/androideraser/NavigationController$$ExternalSyntheticLambda0;-><init>(Lcom/cbinnovations/androideraser/NavigationController;)V

    const p3, 0x7f11016d

    .line 105
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f110144

    const/4 p3, 0x0

    .line 108
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/NavigationController;->bindService()V

    return-void
.end method
