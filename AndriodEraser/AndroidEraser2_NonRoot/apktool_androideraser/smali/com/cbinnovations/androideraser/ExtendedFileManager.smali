.class public Lcom/cbinnovations/androideraser/ExtendedFileManager;
.super Lcom/cbinnovations/androideraser/NavigationController;
.source "ExtendedFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;
    }
.end annotation


# instance fields
.field private animationIn:Landroid/view/animation/Animation;

.field private animationOut:Landroid/view/animation/Animation;

.field private click:Z

.field private final explorerStorages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;",
            ">;"
        }
    .end annotation
.end field

.field private imageLoader:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

.field private final mActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mMenu:Landroid/view/Menu;

.field private recycleView:Landroidx/recyclerview/widget/RecyclerView;

.field private final rootStorages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/documentfile/provider/DocumentFile;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/documentfile/provider/DocumentFile;",
            ">;"
        }
    .end annotation
.end field

.field private selectedStorage:Landroidx/documentfile/provider/DocumentFile;


# direct methods
.method static bridge synthetic -$$Nest$fgetanimationIn(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->animationIn:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanimationOut(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->animationOut:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetclick(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->click:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetexplorerStorages(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->explorerStorages:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimageLoader(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Lcom/cbinnovations/androideraser/shredder/ImageLoader;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->imageLoader:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActionModeCallback(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Landroid/view/ActionMode$Callback;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecycleView(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrootStorages(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->rootStorages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedPaths(Lcom/cbinnovations/androideraser/ExtendedFileManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->selectedPaths:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputclick(Lcom/cbinnovations/androideraser/ExtendedFileManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->click:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$maskStoragePermission(Lcom/cbinnovations/androideraser/ExtendedFileManager;Landroidx/documentfile/provider/DocumentFile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->askStoragePermission(Landroidx/documentfile/provider/DocumentFile;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcanWrite(Lcom/cbinnovations/androideraser/ExtendedFileManager;Landroidx/documentfile/provider/DocumentFile;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->canWrite(Landroidx/documentfile/provider/DocumentFile;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$memptyDir(Lcom/cbinnovations/androideraser/ExtendedFileManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->emptyDir(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetGranted(Lcom/cbinnovations/androideraser/ExtendedFileManager;Landroidx/documentfile/provider/DocumentFile;)Landroidx/documentfile/provider/DocumentFile;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->getGranted(Landroidx/documentfile/provider/DocumentFile;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhideOption(Lcom/cbinnovations/androideraser/ExtendedFileManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->hideOption(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monItemClick(Lcom/cbinnovations/androideraser/ExtendedFileManager;Landroidx/documentfile/provider/DocumentFile;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->onItemClick(Landroidx/documentfile/provider/DocumentFile;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowOption(Lcom/cbinnovations/androideraser/ExtendedFileManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->showOption(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSummary(Lcom/cbinnovations/androideraser/ExtendedFileManager;Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->showSummary(Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msortContent(Lcom/cbinnovations/androideraser/ExtendedFileManager;Landroidx/documentfile/provider/DocumentFile;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->sortContent(Landroidx/documentfile/provider/DocumentFile;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/NavigationController;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->click:Z

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->explorerStorages:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->rootStorages:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->selectedPaths:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;

    invoke-direct {v0, p0}, Lcom/cbinnovations/androideraser/ExtendedFileManager$1;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;)V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method private askStoragePermission(Landroidx/documentfile/provider/DocumentFile;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 392
    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->selectedStorage:Landroidx/documentfile/provider/DocumentFile;

    .line 394
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x17

    invoke-virtual {p0, p1, v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method private canWrite(Landroidx/documentfile/provider/DocumentFile;)Z
    .locals 1

    .line 359
    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->getGranted(Landroidx/documentfile/provider/DocumentFile;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 361
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private emptyDir(Z)V
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    const v0, 0x7f0800c3

    if-eqz p1, :cond_1

    .line 521
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0xc8

    invoke-static {p1, v0}, Lcom/cbinnovations/androideraser/utils/Anim;->fadeIn(Landroid/view/View;I)V

    return-void

    .line 523
    :cond_1
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/cbinnovations/androideraser/utils/Anim;->fadeOut(Landroid/view/View;I)V

    return-void
.end method

.method private getGranted(Landroidx/documentfile/provider/DocumentFile;)Landroidx/documentfile/provider/DocumentFile;
    .locals 2

    if-eqz p1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->explorerStorages:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->explorerStorages:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->granted:Landroidx/documentfile/provider/DocumentFile;

    :cond_0
    return-object p1
.end method

.method private getStorage()V
    .locals 2

    .line 322
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;

    invoke-direct {v0, p0}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;-><init>(Landroid/content/Context;)V

    .line 323
    new-instance v1, Lcom/cbinnovations/androideraser/ExtendedFileManager$7;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/ExtendedFileManager$7;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;)V

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;->setOnSearchListener(Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;)V

    const/4 v1, 0x1

    .line 348
    invoke-virtual {v0, v1, v1, v1}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;->start(ZZZ)V

    return-void
.end method

.method private hideOption(I)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x0

    .line 307
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private initOnCreate()V
    .locals 2

    .line 161
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    invoke-direct {v0, p0}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->imageLoader:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    const v0, 0x7f0801b2

    .line 162
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 163
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 164
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 165
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const v0, 0x7f01000d

    .line 167
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->animationOut:Landroid/view/animation/Animation;

    .line 168
    new-instance v1, Lcom/cbinnovations/androideraser/ExtendedFileManager$2;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/ExtendedFileManager$2;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f01000f

    .line 180
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->animationIn:Landroid/view/animation/Animation;

    .line 181
    new-instance v1, Lcom/cbinnovations/androideraser/ExtendedFileManager$3;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/ExtendedFileManager$3;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 194
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->navigation:Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;

    new-instance v1, Lcom/cbinnovations/androideraser/ExtendedFileManager$4;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/ExtendedFileManager$4;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;)V

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->setChangeListener(Lcom/cbinnovations/androideraser/shredder/explorer/Navigation$ChangeListener;)V

    return-void
.end method

.method private onItemClick(Landroidx/documentfile/provider/DocumentFile;Z)V
    .locals 2

    .line 365
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->canWrite(Landroidx/documentfile/provider/DocumentFile;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f11001b

    .line 370
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f11001c

    .line 371
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/cbinnovations/androideraser/ExtendedFileManager$9;

    invoke-direct {v0, p0, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$9;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;Landroidx/documentfile/provider/DocumentFile;)V

    const v1, 0x104000a

    .line 372
    invoke-virtual {p2, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/cbinnovations/androideraser/ExtendedFileManager$8;

    invoke-direct {v0, p0, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$8;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;Landroidx/documentfile/provider/DocumentFile;)V

    const p1, 0x7f110120

    .line 377
    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    .line 382
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 383
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 367
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->showNext(Landroidx/documentfile/provider/DocumentFile;)V

    return-void

    .line 386
    :cond_2
    invoke-static {p0, p1}, Lcom/cbinnovations/androideraser/shredder/Storage;->openFile(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;)V

    return-void
.end method

.method private showOption(I)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x1

    .line 312
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private showSummary(Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;)V
    .locals 5

    .line 528
    new-instance v0, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Group:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    invoke-direct {v0, p1, v1}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;-><init>(Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

    new-instance v2, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

    sget-object v3, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->file:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    iget-object v4, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->selectedPaths:Ljava/util/ArrayList;

    .line 529
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;-><init>(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/cbinnovations/androideraser/ExtendedFileManager$16;

    invoke-direct {v2, p0, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$16;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;)V

    const/4 p1, 0x0

    .line 528
    invoke-static {p0, v0, v1, v2, p1}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->showSummary(Landroid/content/Context;Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;Landroid/view/View$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private sortContent(Landroidx/documentfile/provider/DocumentFile;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/documentfile/provider/DocumentFile;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/documentfile/provider/DocumentFile;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 400
    invoke-virtual/range {p1 .. p1}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 402
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 403
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 405
    array-length v0, v2

    if-eqz v0, :cond_9

    .line 406
    invoke-static {v1}, Lcom/cbinnovations/androideraser/settings/Settings;->getHiddenFiles(Landroid/content/Context;)Z

    move-result v5

    .line 407
    iget-object v0, v1, Lcom/cbinnovations/androideraser/ExtendedFileManager;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    const-string v6, "cb_sort"

    const/16 v7, 0x1f

    invoke-virtual {v0, v6, v7}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 408
    iget-object v0, v1, Lcom/cbinnovations/androideraser/ExtendedFileManager;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    invoke-virtual {v0, v6, v7}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x2

    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 410
    array-length v11, v2

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_4

    aget-object v0, v2, v12

    if-eqz v0, :cond_3

    .line 413
    :try_start_0
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    if-nez v5, :cond_0

    goto :goto_1

    .line 414
    :cond_0
    iget-object v13, v1, Lcom/cbinnovations/androideraser/ExtendedFileManager;->notDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_1

    .line 416
    :cond_1
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 417
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 418
    :cond_2
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->lastModified()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-lez v17, :cond_3

    .line 419
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 422
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_4
    if-ne v10, v9, :cond_5

    .line 430
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 432
    :try_start_1
    new-instance v0, Lcom/cbinnovations/androideraser/ExtendedFileManager$10;

    invoke-direct {v0, v1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$10;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 438
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    if-ne v7, v6, :cond_9

    .line 442
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_6

    :cond_5
    if-ne v10, v6, :cond_6

    .line 448
    :try_start_2
    new-instance v0, Lcom/cbinnovations/androideraser/ExtendedFileManager$11;

    invoke-direct {v0, v1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$11;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 454
    new-instance v0, Lcom/cbinnovations/androideraser/ExtendedFileManager$12;

    invoke-direct {v0, v1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$12;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 460
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 463
    :goto_3
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-ne v7, v6, :cond_9

    .line 465
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_6

    :cond_6
    const/4 v0, 0x4

    if-ne v10, v0, :cond_7

    .line 470
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 472
    :try_start_3
    new-instance v0, Lcom/cbinnovations/androideraser/ExtendedFileManager$13;

    invoke-direct {v0, v1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$13;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 478
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    if-ne v7, v6, :cond_9

    .line 482
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_6

    .line 488
    :cond_7
    :try_start_4
    new-instance v0, Lcom/cbinnovations/androideraser/ExtendedFileManager$14;

    invoke-direct {v0, v1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$14;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 495
    new-instance v0, Lcom/cbinnovations/androideraser/ExtendedFileManager$15;

    invoke-direct {v0, v1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$15;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 501
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    if-ne v7, v6, :cond_8

    .line 505
    invoke-virtual {v3, v8, v4}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_6

    .line 507
    :cond_8
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    :goto_6
    return-object v3

    .line 515
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 548
    invoke-super {p0, p1, p2, p3}, Lcom/cbinnovations/androideraser/NavigationController;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x17

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 551
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 555
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 558
    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    .line 559
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->selectedStorage:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 560
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 561
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    iget-object p3, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->selectedStorage:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p3}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->explorerStorages:Ljava/util/HashMap;

    iget-object p3, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->selectedStorage:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p3}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->selectedStorage:Landroidx/documentfile/provider/DocumentFile;

    invoke-direct {v0, v1, p1}, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;-><init>(Landroidx/documentfile/provider/DocumentFile;Landroidx/documentfile/provider/DocumentFile;)V

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p1, 0x7f110160

    .line 563
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const p1, 0x7f11008a

    .line 565
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const p1, 0x7f110174

    .line 568
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 140
    invoke-super {p0, p1}, Lcom/cbinnovations/androideraser/NavigationController;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f11008b

    .line 141
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->setTitle(Ljava/lang/CharSequence;)V

    .line 142
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->initOnCreate()V

    .line 143
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->getStorage()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 224
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    .line 225
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 226
    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->mMenu:Landroid/view/Menu;

    const p1, 0x7f080042

    .line 227
    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->hideOption(I)V

    const p1, 0x7f08004d

    .line 228
    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->hideOption(I)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 576
    invoke-super {p0}, Lcom/cbinnovations/androideraser/NavigationController;->onDestroy()V

    .line 577
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->imageLoader:Lcom/cbinnovations/androideraser/shredder/ImageLoader;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/ImageLoader;->clearCache()V

    .line 578
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->finish()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 233
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const v0, 0x7f080042

    if-eq p1, v0, :cond_1

    const v0, 0x7f08004d

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    const-string v0, "cb_sort"

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v2}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 247
    iget-object v4, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    invoke-virtual {v4, v0, v2}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 248
    iput-boolean v3, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->click:Z

    .line 250
    new-instance v2, Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-direct {v2, p0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110154

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->title(Ljava/lang/CharSequence;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object v2

    const v3, 0x7f0d0002

    invoke-virtual {v2, v3}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->sheet(I)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object v2

    new-instance v3, Lcom/cbinnovations/androideraser/ExtendedFileManager$6;

    invoke-direct {v3, p0, v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager$6;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;I)V

    invoke-virtual {v2, v3}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->listener(Landroid/content/DialogInterface$OnClickListener;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object v2

    .line 271
    invoke-virtual {v2}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->show()Lcom/cocosw/bottomsheet/BottomSheet;

    move-result-object v2

    new-instance v3, Lcom/cbinnovations/androideraser/ExtendedFileManager$5;

    invoke-direct {v3, p0, p1, v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager$5;-><init>(Lcom/cbinnovations/androideraser/ExtendedFileManager;II)V

    invoke-virtual {v2, v3}, Lcom/cocosw/bottomsheet/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 239
    :cond_1
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->mActionMode:Landroid/view/ActionMode;

    if-nez p1, :cond_3

    .line 240
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->mActionMode:Landroid/view/ActionMode;

    .line 241
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ExtendedFileManager;->adapter:Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/ExtendedFileManager$FileManagerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->finish()V

    :cond_3
    :goto_0
    return v1
.end method

.method protected onResume()V
    .locals 2

    .line 147
    invoke-super {p0}, Lcom/cbinnovations/androideraser/NavigationController;->onResume()V

    .line 148
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/cbinnovations/androideraser/utils/Permission;->has(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f1100ce

    .line 149
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 150
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/ExtendedFileManager;->finish()V

    :cond_0
    return-void
.end method
