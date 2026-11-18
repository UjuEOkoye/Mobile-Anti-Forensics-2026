.class public Lcom/cbinnovations/androideraser/screen/MethodScreen;
.super Lcom/cbinnovations/androideraser/screen/ShredScreen;
.source "MethodScreen.java"

# interfaces
.implements Lcom/cbinnovations/androideraser/MethodsAdapter$OnDataAdapterListener;


# static fields
.field public static final mMethods:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;


# instance fields
.field private mMethodsAdapter:Lcom/cbinnovations/androideraser/MethodsAdapter;

.field private mRecyclerViewMethod:Landroidx/recyclerview/widget/RecyclerView;

.field private mSlidingUpPanelLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

.field protected tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMethodsAdapter(Lcom/cbinnovations/androideraser/screen/MethodScreen;)Lcom/cbinnovations/androideraser/MethodsAdapter;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen;->mMethodsAdapter:Lcom/cbinnovations/androideraser/MethodsAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetToolbar(Lcom/cbinnovations/androideraser/screen/MethodScreen;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->setToolbar(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x6

    .line 41
    new-array v0, v0, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;

    new-instance v1, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    new-instance v2, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/Shred0x00;

    invoke-direct {v2}, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/Shred0x00;-><init>()V

    sget-object v3, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Group:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    const v4, 0x7f0e0029

    invoke-direct {v1, v2, v3, v4}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;-><init>(Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    new-instance v2, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredDODME;

    invoke-direct {v2}, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredDODME;-><init>()V

    sget-object v3, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Group:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    const v4, 0x7f0e002a

    invoke-direct {v1, v2, v3, v4}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;-><init>(Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    new-instance v2, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredCSEC_ITSG_06;

    invoke-direct {v2}, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredCSEC_ITSG_06;-><init>()V

    sget-object v3, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Group:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    const v4, 0x7f0e0006

    invoke-direct {v1, v2, v3, v4}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;-><init>(Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    new-instance v2, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredBSI_2011_VS;

    invoke-direct {v2}, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredBSI_2011_VS;-><init>()V

    sget-object v3, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Group:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    const v4, 0x7f0e0011

    invoke-direct {v1, v2, v3, v4}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;-><init>(Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    new-instance v2, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredNato;

    invoke-direct {v2}, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredNato;-><init>()V

    sget-object v3, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Group:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    const v5, 0x7f0e001b

    invoke-direct {v1, v2, v3, v5}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;-><init>(Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    new-instance v2, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredBSITL_03423;

    invoke-direct {v2}, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredBSITL_03423;-><init>()V

    sget-object v3, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Group:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    invoke-direct {v1, v2, v3, v4}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;-><init>(Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/cbinnovations/androideraser/screen/MethodScreen;->mMethods:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/screen/ShredScreen;-><init>()V

    return-void
.end method

.method public static getSummary(Landroid/content/Context;[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;)[Lcom/cbinnovations/androideraser/Summary$Item;
    .locals 6

    .line 85
    array-length v0, p1

    new-array v0, v0, [Lcom/cbinnovations/androideraser/Summary$Item;

    const/4 v1, 0x0

    .line 86
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 87
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    invoke-virtual {v2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    :try_start_0
    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    invoke-virtual {v3}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->getTitle()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :catch_0
    :try_start_1
    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->mType:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    invoke-virtual {v3}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->getDescription()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 97
    :catch_1
    const-string v3, ""

    .line 100
    :goto_1
    new-instance v4, Lcom/cbinnovations/androideraser/Summary$Item;

    aget-object v5, p1, v1

    iget-object v5, v5, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->data:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v2, v3, v5}, Lcom/cbinnovations/androideraser/Summary$Item;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private initOnCreate()V
    .locals 2

    const/4 v0, 0x1

    .line 122
    invoke-direct {p0, v0}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->setToolbar(Z)V

    const v0, 0x7f080135

    .line 124
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen;->mRecyclerViewMethod:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f08013b

    .line 125
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    iput-object v0, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen;->mSlidingUpPanelLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 127
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->initRecyclerView()V

    .line 128
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen;->mSlidingUpPanelLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen;->mRecyclerViewMethod:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setScrollableView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen;->mSlidingUpPanelLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setTouchEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen;->mSlidingUpPanelLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setCoveredFadeColor(I)V

    .line 131
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen;->mSlidingUpPanelLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    new-instance v1, Lcom/cbinnovations/androideraser/screen/MethodScreen$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/cbinnovations/androideraser/screen/MethodScreen$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setFadeOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen;->mSlidingUpPanelLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    new-instance v1, Lcom/cbinnovations/androideraser/screen/MethodScreen$1;

    invoke-direct {v1, p0}, Lcom/cbinnovations/androideraser/screen/MethodScreen$1;-><init>(Lcom/cbinnovations/androideraser/screen/MethodScreen;)V

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->addPanelSlideListener(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;)V

    return-void
.end method

.method private initRecyclerView()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen;->mRecyclerViewMethod:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 165
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen;->mRecyclerViewMethod:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 167
    new-instance v0, Lcom/cbinnovations/androideraser/MethodsAdapter;

    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/cbinnovations/androideraser/screen/MethodScreen;->mMethods:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, p0, v1}, Lcom/cbinnovations/androideraser/MethodsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen;->mMethodsAdapter:Lcom/cbinnovations/androideraser/MethodsAdapter;

    .line 168
    invoke-virtual {v0, p0}, Lcom/cbinnovations/androideraser/MethodsAdapter;->setOnDataAdapterListener(Lcom/cbinnovations/androideraser/MethodsAdapter$OnDataAdapterListener;)V

    .line 169
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen;->mRecyclerViewMethod:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen;->mMethodsAdapter:Lcom/cbinnovations/androideraser/MethodsAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method static synthetic lambda$initOnCreate$0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$showSummary$0(Landroid/view/View;Landroid/content/Context;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const p2, 0x106000d

    .line 59
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic lambda$showSummary$1(Landroid/widget/CheckBox;Landroid/view/View$OnClickListener;Landroid/app/AlertDialog;Landroid/view/View;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 75
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 76
    invoke-interface {p1, p5}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 77
    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    :cond_0
    const p0, 0x7f05030e

    .line 79
    invoke-static {p4, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private setToolbar(Z)V
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const v1, 0x7f110142

    goto :goto_0

    :cond_0
    const v1, 0x7f110145

    .line 181
    :goto_0
    invoke-virtual {p0, v1}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->setTitle(I)V

    const/4 v1, 0x1

    .line 182
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 183
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    if-eqz p1, :cond_1

    const p1, 0x7f0e0016

    goto :goto_1

    :cond_1
    const p1, 0x7f0e0004

    .line 184
    :goto_1
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    :cond_2
    return-void
.end method

.method public static showSummary(Landroid/content/Context;Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;Landroid/view/View$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 8

    const v0, 0x7f0b0033

    const/4 v1, 0x0

    .line 54
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v0, 0x7f080083

    .line 55
    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/CheckBox;

    const v0, 0x7f110161

    .line 56
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setText(I)V

    const/high16 v0, 0x41400000    # 12.0f

    .line 57
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 58
    new-instance v0, Lcom/cbinnovations/androideraser/screen/MethodScreen$$ExternalSyntheticLambda1;

    invoke-direct {v0, v6, p0}, Lcom/cbinnovations/androideraser/screen/MethodScreen$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 62
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const v4, 0x7f110062

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->getEraseMethod()Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    move-result-object p1

    iget-object p1, p1, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mValue:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;

    invoke-virtual {p1, p0}, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 64
    new-instance p1, Lcom/cbinnovations/androideraser/Summary$Adapter;

    invoke-static {p0, p2}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->getSummary(Landroid/content/Context;[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;)[Lcom/cbinnovations/androideraser/Summary$Item;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/cbinnovations/androideraser/Summary$Adapter;-><init>(Landroid/content/Context;[Lcom/cbinnovations/androideraser/Summary$Item;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const p1, 0x104000a

    .line 66
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    .line 67
    invoke-virtual {v0, p1, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 70
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 71
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    const/4 p1, -0x1

    .line 73
    invoke-virtual {v5, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 74
    new-instance v2, Lcom/cbinnovations/androideraser/screen/MethodScreen$$ExternalSyntheticLambda2;

    move-object v7, p0

    move-object v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/cbinnovations/androideraser/screen/MethodScreen$$ExternalSyntheticLambda2;-><init>(Landroid/widget/CheckBox;Landroid/view/View$OnClickListener;Landroid/app/AlertDialog;Landroid/view/View;Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public closePanel()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen;->mSlidingUpPanelLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelState(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;)V

    .line 259
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen;->mRecyclerViewMethod:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    return-void
.end method

.method public isPanelOpen()Z
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen;->mSlidingUpPanelLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPanelState()Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    move-result-object v0

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Lcom/cbinnovations/androideraser/screen/ShredScreen;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001f

    .line 109
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->setContentView(I)V

    .line 110
    new-instance p1, Lcom/cbinnovations/androideraser/utils/TinyDB;

    invoke-direct {p1, p0}, Lcom/cbinnovations/androideraser/utils/TinyDB;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    .line 111
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->initOnCreate()V

    return-void
.end method

.method public onGroupChecked(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)V
    .locals 1

    .line 203
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->showSummary(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)V

    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen;->mMethodsAdapter:Lcom/cbinnovations/androideraser/MethodsAdapter;

    invoke-virtual {v0, p1}, Lcom/cbinnovations/androideraser/MethodsAdapter;->updateItem(Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;)V

    const p1, 0x7f110089

    .line 227
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 228
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->closePanel()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 189
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->isPanelOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->closePanel()V

    .line 193
    :cond_0
    invoke-super {p0, p1}, Lcom/cbinnovations/androideraser/screen/ShredScreen;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public openPanel()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/cbinnovations/androideraser/screen/MethodScreen;->mSlidingUpPanelLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->EXPANDED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelState(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;)V

    return-void
.end method

.method public showSummary(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)V
    .locals 3

    .line 233
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->getData()[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/screen/MethodScreen$2;

    invoke-direct {v1, p0, p1}, Lcom/cbinnovations/androideraser/screen/MethodScreen$2;-><init>(Lcom/cbinnovations/androideraser/screen/MethodScreen;Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)V

    new-instance v2, Lcom/cbinnovations/androideraser/screen/MethodScreen$3;

    invoke-direct {v2, p0, p1}, Lcom/cbinnovations/androideraser/screen/MethodScreen$3;-><init>(Lcom/cbinnovations/androideraser/screen/MethodScreen;Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)V

    invoke-static {p0, p1, v0, v1, v2}, Lcom/cbinnovations/androideraser/screen/MethodScreen;->showSummary(Landroid/content/Context;Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;Landroid/view/View$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
