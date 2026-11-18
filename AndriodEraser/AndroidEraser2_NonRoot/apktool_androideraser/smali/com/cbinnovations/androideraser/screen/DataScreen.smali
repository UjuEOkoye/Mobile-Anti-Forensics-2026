.class public Lcom/cbinnovations/androideraser/screen/DataScreen;
.super Lcom/cbinnovations/androideraser/screen/MethodScreen;
.source "DataScreen.java"

# interfaces
.implements Lcom/cbinnovations/androideraser/DataAdapter$OnDataAdapterListener;


# instance fields
.field private askingFileManagerPer:Z

.field private doubleBackToExitPressedOnce:Z

.field private hasScannedGlobal:Z

.field private mAdapter:Lcom/cbinnovations/androideraser/DataAdapter;

.field private mButtonScan:Landroid/widget/Button;

.field private mChildItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

.field private mExplorerStorage:Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;

.field private mGroupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSelectedAmount:Landroid/widget/TextView;

.field private permissionDialog:Landroid/app/AlertDialog;

.field private selectedBytes:J


# direct methods
.method static bridge synthetic -$$Nest$fgethasScannedGlobal(Lcom/cbinnovations/androideraser/screen/DataScreen;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->hasScannedGlobal:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/cbinnovations/androideraser/screen/DataScreen;)Lcom/cbinnovations/androideraser/DataAdapter;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mAdapter:Lcom/cbinnovations/androideraser/DataAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmButtonScan(Lcom/cbinnovations/androideraser/screen/DataScreen;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mButtonScan:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpermissionDialog(Lcom/cbinnovations/androideraser/screen/DataScreen;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->permissionDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputaskingFileManagerPer(Lcom/cbinnovations/androideraser/screen/DataScreen;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->askingFileManagerPer:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdoubleBackToExitPressedOnce(Lcom/cbinnovations/androideraser/screen/DataScreen;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->doubleBackToExitPressedOnce:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhasScannedGlobal(Lcom/cbinnovations/androideraser/screen/DataScreen;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->hasScannedGlobal:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$maskPermissions(Lcom/cbinnovations/androideraser/screen/DataScreen;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->askPermissions()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$maskStoragePermission(Lcom/cbinnovations/androideraser/screen/DataScreen;Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cbinnovations/androideraser/screen/DataScreen;->askStoragePermission(Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateButton(Lcom/cbinnovations/androideraser/screen/DataScreen;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cbinnovations/androideraser/screen/DataScreen;->updateButton(ZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDataText(Lcom/cbinnovations/androideraser/screen/DataScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->updateDataText()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 56
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/screen/MethodScreen;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->doubleBackToExitPressedOnce:Z

    .line 68
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->hasScannedGlobal:Z

    const-wide/16 v1, 0x0

    .line 69
    iput-wide v1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->selectedBytes:J

    .line 286
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->askingFileManagerPer:Z

    return-void
.end method

.method private askPermissions()Z
    .locals 9

    .line 304
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cbinnovations/androideraser/utils/Permission;->has(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 305
    invoke-static {p0, v2}, Lcom/cbinnovations/androideraser/utils/Permission;->has(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return v3

    .line 306
    :cond_1
    :goto_0
    new-array v1, v3, [Z

    const/4 v4, 0x0

    aput-boolean v4, v1, v4

    .line 308
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 309
    new-instance v6, Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;

    const v7, 0x7f11015b

    invoke-virtual {p0, v7}, Lcom/cbinnovations/androideraser/screen/DataScreen;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f11015c

    invoke-virtual {p0, v8}, Lcom/cbinnovations/androideraser/screen/DataScreen;->getString(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v7, v8, v0}, Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x21

    if-lt v0, v6, :cond_2

    invoke-static {p0, v2}, Lcom/cbinnovations/androideraser/utils/Permission;->has(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 311
    aput-boolean v3, v1, v4

    .line 312
    new-instance v0, Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;

    const v3, 0x7f11011c

    invoke-virtual {p0, v3}, Lcom/cbinnovations/androideraser/screen/DataScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f11011d

    invoke-virtual {p0, v6}, Lcom/cbinnovations/androideraser/screen/DataScreen;->getString(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v6, v2}, Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_2
    new-instance v0, Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;

    const v2, 0x7f110064

    invoke-virtual {p0, v2}, Lcom/cbinnovations/androideraser/screen/DataScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f110065

    invoke-virtual {p0, v3}, Lcom/cbinnovations/androideraser/screen/DataScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "android.permission.READ_CONTACTS"

    const-string v7, "android.permission.WRITE_CONTACTS"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v2, v3, v6}, Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    new-instance v0, Lcom/cbinnovations/androideraser/PermissionAdapter;

    new-array v2, v4, [Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;

    invoke-direct {v0, p0, v2}, Lcom/cbinnovations/androideraser/PermissionAdapter;-><init>(Landroid/content/Context;[Lcom/cbinnovations/androideraser/PermissionAdapter$Struct;)V

    .line 318
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f110128

    .line 319
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 320
    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v5, 0x7f110026

    .line 321
    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v5, 0x7f11004d

    .line 322
    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 324
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->permissionDialog:Landroid/app/AlertDialog;

    .line 325
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 326
    iget-object v2, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->permissionDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/cbinnovations/androideraser/screen/DataScreen$6;

    invoke-direct {v3, p0, v0, v1}, Lcom/cbinnovations/androideraser/screen/DataScreen$6;-><init>(Lcom/cbinnovations/androideraser/screen/DataScreen;Lcom/cbinnovations/androideraser/PermissionAdapter;[Z)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->permissionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/cbinnovations/androideraser/screen/DataScreen$7;

    invoke-direct {v2, p0, v0}, Lcom/cbinnovations/androideraser/screen/DataScreen$7;-><init>(Lcom/cbinnovations/androideraser/screen/DataScreen;Lcom/cbinnovations/androideraser/PermissionAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return v4
.end method

.method private askStoragePermission(Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 372
    iput-object p3, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mChildItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    .line 373
    iput-object p2, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mGroupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    .line 374
    iput-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mExplorerStorage:Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;

    .line 376
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x17

    invoke-virtual {p0, p1, p2}, Lcom/cbinnovations/androideraser/screen/DataScreen;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method private initMainButton()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mButtonScan:Landroid/widget/Button;

    new-instance v1, Lcom/cbinnovations/androideraser/screen/DataScreen$3;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/screen/DataScreen$3;-><init>(Lcom/cbinnovations/androideraser/screen/DataScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initOnCreate()V
    .locals 2

    const v0, 0x7f080134

    .line 93
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f080139

    .line 94
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mSelectedAmount:Landroid/widget/TextView;

    const v0, 0x7f08011e

    .line 95
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mButtonScan:Landroid/widget/Button;

    .line 97
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->initMainButton()V

    .line 98
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->initRecyclerView()V

    const v0, 0x7f080127

    .line 100
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/screen/DataScreen$1;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/screen/DataScreen$1;-><init>(Lcom/cbinnovations/androideraser/screen/DataScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initRecyclerView()V
    .locals 7

    .line 112
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 113
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    new-instance v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    sget-object v2, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->freespace:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    new-instance v3, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    const v4, 0x7f0e0002

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f110093

    invoke-virtual {p0, v5}, Lcom/cbinnovations/androideraser/screen/DataScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;-><init>(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    sget-object v2, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->completeErase:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    new-instance v3, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    const/high16 v5, 0x7f0e0000

    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v6, 0x7f110060

    invoke-virtual {p0, v6}, Lcom/cbinnovations/androideraser/screen/DataScreen;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;-><init>(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    sget-object v2, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->file:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    new-instance v3, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    const v5, 0x7f0e000b

    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v6, 0x7f110092

    invoke-virtual {p0, v6}, Lcom/cbinnovations/androideraser/screen/DataScreen;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;-><init>(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    sget-object v2, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->privacy:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    new-instance v3, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    const v5, 0x7f0e002d

    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v6, 0x7f11012e

    invoke-virtual {p0, v6}, Lcom/cbinnovations/androideraser/screen/DataScreen;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;-><init>(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v1, Lcom/cbinnovations/androideraser/DataAdapter;

    invoke-direct {v1, p0, v0}, Lcom/cbinnovations/androideraser/DataAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mAdapter:Lcom/cbinnovations/androideraser/DataAdapter;

    .line 123
    invoke-virtual {v1, p0}, Lcom/cbinnovations/androideraser/DataAdapter;->setOnDataAdapterListener(Lcom/cbinnovations/androideraser/DataAdapter$OnDataAdapterListener;)V

    .line 124
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mAdapter:Lcom/cbinnovations/androideraser/DataAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 125
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/cbinnovations/androideraser/screen/DataScreen$2;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/screen/DataScreen$2;-><init>(Lcom/cbinnovations/androideraser/screen/DataScreen;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private makeHint()V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    const-string v1, "cb_hint_shred_slow_device"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110081

    .line 291
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110082

    .line 292
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 293
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/screen/DataScreen$5;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/screen/DataScreen$5;-><init>(Lcom/cbinnovations/androideraser/screen/DataScreen;)V

    const v2, 0x7f110079

    .line 294
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private scanFor(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;)V
    .locals 23

    move-object/from16 v0, p0

    .line 480
    invoke-direct {v0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->askPermissions()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 481
    :cond_0
    new-instance v1, Lcom/cbinnovations/androideraser/screen/DataScreen$9;

    move-object/from16 v2, p1

    invoke-direct {v1, v0, v2}, Lcom/cbinnovations/androideraser/screen/DataScreen$9;-><init>(Lcom/cbinnovations/androideraser/screen/DataScreen;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;)V

    .line 500
    sget-object v3, Lcom/cbinnovations/androideraser/screen/DataScreen$10;->$SwitchMap$com$cbinnovations$androideraser$shredder$search$adapter$GroupItem$Type:[I

    invoke-virtual {v2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->getType()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_3

    const/4 v2, 0x3

    if-eq v3, v2, :cond_2

    const/4 v2, 0x4

    if-eq v3, v2, :cond_1

    :goto_0
    return-void

    .line 515
    :cond_1
    iget-object v2, v0, Lcom/cbinnovations/androideraser/screen/DataScreen;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    const-string v3, "cb_is_premium"

    invoke-virtual {v2, v3, v4}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 516
    new-instance v5, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;

    invoke-direct {v5, v0}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;-><init>(Landroid/content/Context;)V

    .line 517
    invoke-virtual {v5, v1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;->setOnSearchListener(Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;)V

    const/4 v7, 0x0

    const/4 v14, 0x1

    const/4 v6, 0x1

    move v9, v8

    move v10, v8

    move v11, v8

    move v12, v8

    move v13, v8

    .line 518
    invoke-virtual/range {v5 .. v14}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;->start(ZZZZZZZZZ)V

    return-void

    .line 509
    :cond_2
    new-instance v15, Lcom/cbinnovations/androideraser/shredder/search/data/files/Files;

    invoke-direct {v15, v0}, Lcom/cbinnovations/androideraser/shredder/search/data/files/Files;-><init>(Landroid/content/Context;)V

    .line 510
    invoke-virtual {v15, v1}, Lcom/cbinnovations/androideraser/shredder/search/data/files/Files;->setOnSearchListener(Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;)V

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    .line 511
    invoke-virtual/range {v15 .. v22}, Lcom/cbinnovations/androideraser/shredder/search/data/files/Files;->start(ZZZZZZZ)V

    return-void

    .line 503
    :cond_3
    new-instance v3, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;

    invoke-direct {v3, v0}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;-><init>(Landroid/content/Context;)V

    .line 504
    invoke-virtual {v3, v1}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;->setOnSearchListener(Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;)V

    .line 505
    invoke-virtual {v2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->getType()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    move-result-object v1

    sget-object v2, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->freespace:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-ne v1, v2, :cond_4

    const/4 v4, 0x1

    :cond_4
    invoke-virtual {v3, v5, v5, v4}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;->start(ZZZ)V

    return-void
.end method

.method private updateButton(ZLjava/lang/String;)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mButtonScan:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object p2, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mButtonScan:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 361
    iget-object p2, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mButtonScan:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const p1, 0x7f07008b

    goto :goto_0

    :cond_0
    const p1, 0x7f07008a

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method

.method private updateDataText()V
    .locals 6

    .line 365
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mSelectedAmount:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->selectedBytes:J

    invoke-static {v1, v2}, Lcom/cbinnovations/androideraser/shredder/Storage;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    invoke-static {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->getDefaultMethod(Landroid/content/Context;)Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    move-result-object v0

    .line 367
    iget-wide v1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->selectedBytes:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    const v0, 0x7f11015e

    goto :goto_1

    :cond_1
    const v0, 0x7f11014d

    :goto_1
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->updateButton(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 216
    invoke-super {p0, p1, p2, p3}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x17

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 219
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 223
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 226
    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    .line 227
    iget-object p2, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mExplorerStorage:Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;

    iget-object p2, p2, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->original:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 228
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 229
    iget-object p2, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mExplorerStorage:Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;

    iput-object p1, p2, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->granted:Landroidx/documentfile/provider/DocumentFile;

    .line 230
    iget-object p2, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mExplorerStorage:Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->original:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mChildItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getChildData(I)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    move-result-object p1

    iget-object p1, p1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->objects:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mExplorerStorage:Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;

    aput-object v0, p1, p2

    .line 232
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mGroupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mChildItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    invoke-virtual {p0, p1, v0, p3, p3}, Lcom/cbinnovations/androideraser/screen/DataScreen;->onChildChecked(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;ZZ)V

    const/4 p1, 0x0

    .line 233
    iput-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mChildItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    .line 234
    iput-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mGroupItem:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    .line 235
    iput-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mExplorerStorage:Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;

    const p1, 0x7f110160

    .line 236
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/screen/DataScreen;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const p1, 0x7f11008a

    .line 238
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/screen/DataScreen;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const p1, 0x7f110174

    .line 241
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/screen/DataScreen;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 249
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->isPanelOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->closePanel()V

    return-void

    .line 252
    :cond_0
    iget-boolean v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->doubleBackToExitPressedOnce:Z

    if-eqz v0, :cond_1

    .line 253
    invoke-super {p0}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->onBackPressed()V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 255
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->doubleBackToExitPressedOnce:Z

    const v0, 0x7f11012d

    .line 256
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 257
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/cbinnovations/androideraser/screen/DataScreen$4;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/screen/DataScreen$4;-><init>(Lcom/cbinnovations/androideraser/screen/DataScreen;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onChildChecked(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;ZZ)V
    .locals 5

    .line 420
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    const-string v1, "cb_is_premium"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getType()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    move-result-object v0

    sget-object v3, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->whatsapp:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-eq v0, v3, :cond_0

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getType()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    move-result-object v0

    sget-object v3, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->emptyFolder:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-eq v0, v3, :cond_0

    .line 421
    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getType()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    move-result-object v0

    sget-object v3, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->apk:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-eq v0, v3, :cond_0

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getType()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    move-result-object v0

    sget-object v3, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->download:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-eq v0, v3, :cond_0

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getType()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    move-result-object v0

    sget-object v3, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->file:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-eq v0, v3, :cond_0

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getType()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    move-result-object v0

    sget-object v3, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->faceRecognize:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-eq v0, v3, :cond_0

    .line 422
    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getType()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    move-result-object v0

    sget-object v3, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->appResidues:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p3, :cond_8

    .line 425
    sget-object p3, Lcom/cbinnovations/androideraser/screen/DataScreen$10;->$SwitchMap$com$cbinnovations$androideraser$shredder$search$adapter$GroupItem$Type:[I

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getType()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->ordinal()I

    move-result v3

    aget p3, p3, v3

    if-eq p3, v1, :cond_2

    const/4 v3, 0x2

    if-eq p3, v3, :cond_2

    goto :goto_1

    .line 428
    :cond_2
    invoke-virtual {p2, v2, v2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getChildData(II)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;

    .line 429
    invoke-virtual {p3}, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->hasGranted()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p3, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->granted:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v3

    if-nez v3, :cond_4

    .line 430
    :cond_3
    iget-object v3, p3, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->original:Landroidx/documentfile/provider/DocumentFile;

    invoke-static {p0, v3}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;->getGrantedDocumentFile(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    .line 431
    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 432
    iput-object v3, p3, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->granted:Landroidx/documentfile/provider/DocumentFile;

    .line 433
    invoke-virtual {p2, v2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getChildData(I)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    move-result-object v1

    iget-object v1, v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->objects:[Ljava/lang/Object;

    aput-object p3, v1, v2

    .line 452
    :cond_4
    :goto_1
    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->hasSelectedChildItems()Z

    move-result p3

    if-nez p3, :cond_6

    .line 453
    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getTotalByteSize()J

    move-result-wide v1

    if-eqz v0, :cond_5

    .line 454
    iget-wide v3, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->selectedFiles:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->selectedFiles:J

    .line 455
    :cond_5
    iget-wide v3, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->selectedBytes:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->selectedBytes:J

    .line 457
    :cond_6
    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->selectAll()V

    goto :goto_2

    .line 435
    :cond_7
    new-instance p4, Landroid/app/AlertDialog$Builder;

    invoke-direct {p4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f11001b

    .line 436
    invoke-virtual {p4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p4

    .line 437
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const v3, 0x7f11015d

    invoke-virtual {p0, v3}, Lcom/cbinnovations/androideraser/screen/DataScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getChildHeader()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;->getHeaderTitle()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p4

    new-instance v0, Lcom/cbinnovations/androideraser/screen/DataScreen$8;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/cbinnovations/androideraser/screen/DataScreen$8;-><init>(Lcom/cbinnovations/androideraser/screen/DataScreen;Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V

    const p1, 0x104000a

    .line 438
    invoke-virtual {p4, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 p3, 0x0

    .line 443
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 444
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 459
    :cond_8
    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->hasSelectedChildItems()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 460
    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getTotalByteSize()J

    move-result-wide v1

    if-eqz v0, :cond_9

    .line 461
    iget-wide v3, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->selectedFiles:J

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->selectedFiles:J

    .line 462
    :cond_9
    iget-wide v3, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->selectedBytes:J

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->selectedBytes:J

    .line 464
    :cond_a
    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->unselectAll()V

    .line 466
    :goto_2
    iget-object p3, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mAdapter:Lcom/cbinnovations/androideraser/DataAdapter;

    invoke-virtual {p3, p2}, Lcom/cbinnovations/androideraser/DataAdapter;->updateItem(Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;)V

    if-eqz p4, :cond_b

    .line 468
    iget-object p2, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mAdapter:Lcom/cbinnovations/androideraser/DataAdapter;

    invoke-virtual {p2, p1}, Lcom/cbinnovations/androideraser/DataAdapter;->updateItem(Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;)V

    .line 469
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->updateDataText()V

    :cond_b
    return-void
.end method

.method public onChildClicked(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V
    .locals 1

    .line 406
    sget-object p1, Lcom/cbinnovations/androideraser/screen/DataScreen$10;->$SwitchMap$com$cbinnovations$androideraser$shredder$search$adapter$ChildItem$Reason:[I

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getReason()Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    return-void

    .line 411
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/screen/DataScreen;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 408
    :cond_1
    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getPermission()[Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x15

    invoke-static {p0, p1, p2}, Lcom/cbinnovations/androideraser/utils/Permission;->request(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 72
    invoke-super {p0, p1}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const-class p1, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    invoke-static {p0, p1}, Lcom/cbinnovations/androideraser/utils/Utility;->isMyServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Running!"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->initOnCreate()V

    .line 78
    invoke-static {p0}, Lcom/cbinnovations/androideraser/settings/Settings;->getDirectExplorer(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, p1}, Lcom/cbinnovations/androideraser/utils/Permission;->has(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/screen/DataScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "SHOW"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 82
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->makeHint()V

    .line 86
    :cond_2
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_3

    const-string p1, "android.permission.POST_NOTIFICATIONS"

    .line 87
    invoke-static {p0, p1}, Lcom/cbinnovations/androideraser/utils/Permission;->has(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0005

    .line 168
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onGroupChecked(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;Z)V
    .locals 7

    .line 397
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->getChildItems()[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 398
    invoke-virtual {v4}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getReason()Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    move-result-object v5

    sget-object v6, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->success:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    if-ne v5, v6, :cond_0

    .line 399
    invoke-virtual {p0, p1, v4, p2, v2}, Lcom/cbinnovations/androideraser/screen/DataScreen;->onChildChecked(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;ZZ)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 401
    :cond_1
    iget-object p2, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->mAdapter:Lcom/cbinnovations/androideraser/DataAdapter;

    invoke-virtual {p2, p1}, Lcom/cbinnovations/androideraser/DataAdapter;->updateItem(Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;)V

    .line 402
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->updateDataText()V

    return-void
.end method

.method public onGroupClicked(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;)V
    .locals 2

    .line 388
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->getType()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 390
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->askPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->shouldScan()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->iScanning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/screen/DataScreen;->scanFor(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 173
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f08004a

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f08004c

    if-eq v0, v1, :cond_0

    .line 181
    invoke-super {p0, p1}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 175
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/screen/DataScreen;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 178
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/screen/DataScreen;->startActivity(Landroid/content/Intent;)V

    return v2
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 191
    invoke-super {p0, p1, p2, p3}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/16 v1, 0x15

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_3

    aget p1, p3, p2

    if-nez p1, :cond_3

    const p1, 0x7f110127

    .line 210
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/screen/DataScreen;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 200
    :cond_1
    array-length p1, p3

    if-lez p1, :cond_3

    aget p1, p3, p2

    if-nez p1, :cond_3

    .line 201
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->permissionDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_3

    .line 202
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/cbinnovations/androideraser/PermissionAdapter;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/PermissionAdapter;->notifyDataSetChanged()V

    .line 203
    iget-object p1, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->permissionDialog:Landroid/app/AlertDialog;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const p2, 0x7f110114

    invoke-virtual {p0, p2}, Lcom/cbinnovations/androideraser/screen/DataScreen;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 195
    :cond_2
    array-length p1, p3

    if-lez p1, :cond_3

    aget p1, p3, p2

    if-nez p1, :cond_3

    .line 196
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/cbinnovations/androideraser/ExtendedFileManager;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/screen/DataScreen;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 267
    invoke-super {p0}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->onResume()V

    .line 268
    iget-boolean v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->hasScannedGlobal:Z

    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/screen/DataScreen;->updateDataText()V

    .line 271
    :cond_0
    iget-boolean v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->askingFileManagerPer:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 272
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->askingFileManagerPer:Z

    .line 273
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->permissionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/cbinnovations/androideraser/PermissionAdapter;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/PermissionAdapter;->notifyDataSetChanged()V

    .line 275
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/DataScreen;->permissionDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f110114

    invoke-virtual {p0, v1}, Lcom/cbinnovations/androideraser/screen/DataScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
