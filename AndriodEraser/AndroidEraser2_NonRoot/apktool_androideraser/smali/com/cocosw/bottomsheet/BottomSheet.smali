.class public Lcom/cocosw/bottomsheet/BottomSheet;
.super Landroid/app/Dialog;
.source "BottomSheet.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cocosw/bottomsheet/BottomSheet$Builder;
    }
.end annotation


# instance fields
.field private actions:Lcom/cocosw/bottomsheet/ActionMenu;

.field private adapter:Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

.field private builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

.field private cancelOnSwipeDown:Z

.field private cancelOnTouchOutside:Z

.field private close:Landroid/graphics/drawable/Drawable;

.field private collapseListIcons:Z

.field private dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private fullMenuItem:Lcom/cocosw/bottomsheet/ActionMenu;

.field private helper:Lcom/cocosw/bottomsheet/TranslucentHelper;

.field private final hidden:Landroid/util/SparseIntArray;

.field private icon:Landroid/widget/ImageView;

.field private limit:I

.field private list:Landroid/widget/GridView;

.field private mGridItemLayoutId:I

.field private mHeaderLayoutId:I

.field private mListItemLayoutId:I

.field private menuItem:Lcom/cocosw/bottomsheet/ActionMenu;

.field private more:Landroid/graphics/drawable/Drawable;

.field private moreText:Ljava/lang/String;

.field private showListener:Landroid/content/DialogInterface$OnShowListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 95
    sget v0, Lcom/cocosw/bottomsheet/R$style;->BottomSheet_Dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 69
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->hidden:Landroid/util/SparseIntArray;

    const/4 p1, -0x1

    .line 85
    iput p1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->limit:I

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->cancelOnTouchOutside:Z

    .line 87
    iput-boolean p1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->cancelOnSwipeDown:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 5

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 69
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->hidden:Landroid/util/SparseIntArray;

    const/4 p2, -0x1

    .line 85
    iput p2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->limit:I

    const/4 p2, 0x1

    .line 86
    iput-boolean p2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->cancelOnTouchOutside:Z

    .line 87
    iput-boolean p2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->cancelOnSwipeDown:Z

    .line 102
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/cocosw/bottomsheet/R$styleable;->BottomSheet:[I

    sget v2, Lcom/cocosw/bottomsheet/R$attr;->bs_bottomSheetStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 103
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 105
    :try_start_0
    sget v1, Lcom/cocosw/bottomsheet/R$styleable;->BottomSheet_bs_moreDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->more:Landroid/graphics/drawable/Drawable;

    .line 106
    sget v1, Lcom/cocosw/bottomsheet/R$styleable;->BottomSheet_bs_closeDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->close:Landroid/graphics/drawable/Drawable;

    .line 107
    sget v1, Lcom/cocosw/bottomsheet/R$styleable;->BottomSheet_bs_moreText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->moreText:Ljava/lang/String;

    .line 108
    sget v1, Lcom/cocosw/bottomsheet/R$styleable;->BottomSheet_bs_collapseListIcons:I

    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->collapseListIcons:Z

    .line 109
    sget p2, Lcom/cocosw/bottomsheet/R$styleable;->BottomSheet_bs_headerLayout:I

    sget v1, Lcom/cocosw/bottomsheet/R$layout;->bs_header:I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->mHeaderLayoutId:I

    .line 110
    sget p2, Lcom/cocosw/bottomsheet/R$styleable;->BottomSheet_bs_listItemLayout:I

    sget v1, Lcom/cocosw/bottomsheet/R$layout;->bs_list_entry:I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->mListItemLayoutId:I

    .line 111
    sget p2, Lcom/cocosw/bottomsheet/R$styleable;->BottomSheet_bs_gridItemLayout:I

    sget v1, Lcom/cocosw/bottomsheet/R$layout;->bs_grid_entry:I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->mGridItemLayoutId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    new-instance p2, Lcom/cocosw/bottomsheet/TranslucentHelper;

    invoke-direct {p2, p0, p1}, Lcom/cocosw/bottomsheet/TranslucentHelper;-><init>(Landroid/app/Dialog;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->helper:Lcom/cocosw/bottomsheet/TranslucentHelper;

    return-void

    :catchall_0
    move-exception p1

    .line 113
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method static synthetic access$000(Lcom/cocosw/bottomsheet/BottomSheet;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->showFullItems()V

    return-void
.end method

.method static synthetic access$100(Lcom/cocosw/bottomsheet/BottomSheet;)Landroid/content/DialogInterface$OnShowListener;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->showListener:Landroid/content/DialogInterface$OnShowListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/cocosw/bottomsheet/BottomSheet;)Lcom/cocosw/bottomsheet/ActionMenu;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->actions:Lcom/cocosw/bottomsheet/ActionMenu;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/cocosw/bottomsheet/BottomSheet;)Landroid/util/SparseIntArray;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->hidden:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/cocosw/bottomsheet/BottomSheet;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->mGridItemLayoutId:I

    return p0
.end method

.method static synthetic access$1400(Lcom/cocosw/bottomsheet/BottomSheet;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->mListItemLayoutId:I

    return p0
.end method

.method static synthetic access$1700(Lcom/cocosw/bottomsheet/BottomSheet;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->collapseListIcons:Z

    return p0
.end method

.method static synthetic access$200(Lcom/cocosw/bottomsheet/BottomSheet;)Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->adapter:Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/cocosw/bottomsheet/BottomSheet;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->showShortItems()V

    return-void
.end method

.method static synthetic access$2200(Lcom/cocosw/bottomsheet/BottomSheet;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/cocosw/bottomsheet/BottomSheet;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->limit:I

    return p0
.end method

.method static synthetic access$300(Lcom/cocosw/bottomsheet/BottomSheet;)Landroid/widget/GridView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->list:Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/cocosw/bottomsheet/BottomSheet;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    return-object p0
.end method

.method static synthetic access$402(Lcom/cocosw/bottomsheet/BottomSheet;Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    return-object p1
.end method

.method static synthetic access$600(Lcom/cocosw/bottomsheet/BottomSheet;)Landroid/widget/ImageView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->icon:Landroid/widget/ImageView;

    return-object p0
.end method

.method private getNumColumns()I
    .locals 3

    const/4 v0, 0x1

    .line 127
    :try_start_0
    const-class v1, Landroid/widget/GridView;

    const-string v2, "mRequestedNumColumns"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 129
    iget-object v2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->list:Landroid/widget/GridView;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private hasDivider()Z
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->adapter:Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

    iget-object v0, v0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 9

    .line 156
    iget-boolean v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->cancelOnTouchOutside:Z

    invoke-virtual {p0, v0}, Lcom/cocosw/bottomsheet/BottomSheet;->setCanceledOnTouchOutside(Z)V

    .line 157
    sget v0, Lcom/cocosw/bottomsheet/R$layout;->bottom_sheet_dialog:I

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    .line 158
    sget v0, Lcom/cocosw/bottomsheet/R$id;->bs_main:I

    invoke-virtual {v7, v0}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 159
    iget v3, p0, Lcom/cocosw/bottomsheet/BottomSheet;->mHeaderLayoutId:I

    invoke-static {p1, v3, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 160
    invoke-virtual {p0, v7}, Lcom/cocosw/bottomsheet/BottomSheet;->setContentView(Landroid/view/View;)V

    .line 161
    iget-boolean v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->cancelOnSwipeDown:Z

    if-nez v0, :cond_0

    .line 162
    iput-boolean v0, v7, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->swipeable:Z

    .line 163
    :cond_0
    new-instance v0, Lcom/cocosw/bottomsheet/BottomSheet$1;

    invoke-direct {v0, p0}, Lcom/cocosw/bottomsheet/BottomSheet$1;-><init>(Lcom/cocosw/bottomsheet/BottomSheet;)V

    invoke-virtual {v7, v0}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->setSlideListener(Lcom/cocosw/bottomsheet/ClosableSlidingLayout$SlideListener;)V

    .line 175
    new-instance v0, Lcom/cocosw/bottomsheet/BottomSheet$2;

    invoke-direct {v0, p0}, Lcom/cocosw/bottomsheet/BottomSheet$2;-><init>(Lcom/cocosw/bottomsheet/BottomSheet;)V

    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const/4 v0, 0x2

    .line 190
    new-array v0, v0, [I

    .line 191
    invoke-virtual {v7, v0}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->getLocationOnScreen([I)V

    .line 194
    aget v0, v0, v3

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->helper:Lcom/cocosw/bottomsheet/TranslucentHelper;

    iget v0, v0, Lcom/cocosw/bottomsheet/TranslucentHelper;->mStatusBarHeight:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v7, v3, v0, v3, v3}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->setPadding(IIII)V

    .line 195
    invoke-virtual {v7, v3}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->helper:Lcom/cocosw/bottomsheet/TranslucentHelper;

    iget-boolean v2, v2, Lcom/cocosw/bottomsheet/TranslucentHelper;->mNavBarAvailable:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->helper:Lcom/cocosw/bottomsheet/TranslucentHelper;

    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cocosw/bottomsheet/TranslucentHelper;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v7}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 198
    sget v0, Lcom/cocosw/bottomsheet/R$id;->bottom_sheet_title:I

    invoke-virtual {v7, v0}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 199
    iget-object v2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v2}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$700(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 200
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v2}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$700(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_3
    sget v0, Lcom/cocosw/bottomsheet/R$id;->bottom_sheet_title_image:I

    invoke-virtual {v7, v0}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->icon:Landroid/widget/ImageView;

    .line 205
    sget v0, Lcom/cocosw/bottomsheet/R$id;->bottom_sheet_gridview:I

    invoke-virtual {v7, v0}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->list:Landroid/widget/GridView;

    .line 206
    iput-object v0, v7, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mTarget:Landroid/view/View;

    .line 207
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$800(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Z

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_4

    .line 208
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->list:Landroid/widget/GridView;

    invoke-virtual {v0, v8}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 211
    :cond_4
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$800(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 212
    :goto_2
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 213
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 214
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must set icon for each items in grid style"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_6
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$900(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)I

    move-result v0

    if-lez v0, :cond_7

    .line 219
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$900(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)I

    move-result v0

    invoke-direct {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->getNumColumns()I

    move-result v2

    mul-int v0, v0, v2

    iput v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->limit:I

    goto :goto_3

    :cond_7
    const v0, 0x7fffffff

    .line 221
    iput v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->limit:I

    .line 223
    :goto_3
    invoke-virtual {v7, v3}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->setCollapsible(Z)V

    .line 225
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$1000(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Lcom/cocosw/bottomsheet/ActionMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->actions:Lcom/cocosw/bottomsheet/ActionMenu;

    .line 226
    iput-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->menuItem:Lcom/cocosw/bottomsheet/ActionMenu;

    .line 228
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    iget v2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->limit:I

    if-le v0, v2, :cond_8

    .line 229
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$1000(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Lcom/cocosw/bottomsheet/ActionMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->fullMenuItem:Lcom/cocosw/bottomsheet/ActionMenu;

    .line 230
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$1000(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Lcom/cocosw/bottomsheet/ActionMenu;

    move-result-object v0

    iget v2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->limit:I

    sub-int/2addr v2, v8

    invoke-virtual {v0, v2}, Lcom/cocosw/bottomsheet/ActionMenu;->clone(I)Lcom/cocosw/bottomsheet/ActionMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->menuItem:Lcom/cocosw/bottomsheet/ActionMenu;

    .line 231
    new-instance v0, Lcom/cocosw/bottomsheet/ActionMenuItem;

    sget v3, Lcom/cocosw/bottomsheet/R$id;->bs_more:I

    iget v2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->limit:I

    add-int/lit8 v5, v2, -0x1

    iget-object v6, p0, Lcom/cocosw/bottomsheet/BottomSheet;->moreText:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/cocosw/bottomsheet/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 232
    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->more:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/cocosw/bottomsheet/ActionMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 233
    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->menuItem:Lcom/cocosw/bottomsheet/ActionMenu;

    invoke-virtual {v1, v0}, Lcom/cocosw/bottomsheet/ActionMenu;->add(Lcom/cocosw/bottomsheet/ActionMenuItem;)Landroid/view/MenuItem;

    .line 234
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->menuItem:Lcom/cocosw/bottomsheet/ActionMenu;

    iput-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->actions:Lcom/cocosw/bottomsheet/ActionMenu;

    .line 235
    invoke-virtual {v7, v8}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->setCollapsible(Z)V

    .line 238
    :cond_8
    new-instance v2, Lcom/cocosw/bottomsheet/BottomSheet$3;

    invoke-direct {v2, p0}, Lcom/cocosw/bottomsheet/BottomSheet$3;-><init>(Lcom/cocosw/bottomsheet/BottomSheet;)V

    .line 315
    new-instance v0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

    sget v3, Lcom/cocosw/bottomsheet/R$layout;->bs_list_divider:I

    sget v4, Lcom/cocosw/bottomsheet/R$id;->headerlayout:I

    sget v5, Lcom/cocosw/bottomsheet/R$id;->header:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;-><init>(Landroid/content/Context;Landroid/widget/BaseAdapter;III)V

    iput-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->adapter:Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

    .line 316
    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->list:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 317
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->adapter:Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->list:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->setGridView(Landroid/widget/GridView;)V

    .line 319
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->list:Landroid/widget/GridView;

    new-instance v1, Lcom/cocosw/bottomsheet/BottomSheet$4;

    invoke-direct {v1, p0, v7}, Lcom/cocosw/bottomsheet/BottomSheet$4;-><init>(Lcom/cocosw/bottomsheet/BottomSheet;Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 338
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$2000(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 339
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$2000(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cocosw/bottomsheet/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 341
    :cond_9
    invoke-direct {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->setListLayout()V

    return-void
.end method

.method private setListLayout()V
    .locals 2

    .line 414
    invoke-direct {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->hasDivider()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->list:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/cocosw/bottomsheet/BottomSheet$6;

    invoke-direct {v1, p0}, Lcom/cocosw/bottomsheet/BottomSheet$6;-><init>(Lcom/cocosw/bottomsheet/BottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private showFullItems()V
    .locals 3

    .line 369
    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    const-wide/16 v1, 0x12c

    .line 370
    invoke-virtual {v0, v1, v2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 371
    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->list:Landroid/widget/GridView;

    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 373
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->fullMenuItem:Lcom/cocosw/bottomsheet/ActionMenu;

    iput-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->actions:Lcom/cocosw/bottomsheet/ActionMenu;

    .line 374
    invoke-direct {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->updateSection()V

    .line 375
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->adapter:Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->notifyDataSetChanged()V

    .line 376
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->list:Landroid/widget/GridView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->close:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 379
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->icon:Landroid/widget/ImageView;

    new-instance v1, Lcom/cocosw/bottomsheet/BottomSheet$5;

    invoke-direct {v1, p0}, Lcom/cocosw/bottomsheet/BottomSheet$5;-><init>(Lcom/cocosw/bottomsheet/BottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    invoke-direct {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->setListLayout()V

    return-void
.end method

.method private showShortItems()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->menuItem:Lcom/cocosw/bottomsheet/ActionMenu;

    iput-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->actions:Lcom/cocosw/bottomsheet/ActionMenu;

    .line 390
    invoke-direct {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->updateSection()V

    .line 391
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->adapter:Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->notifyDataSetChanged()V

    .line 392
    invoke-direct {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->setListLayout()V

    .line 394
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$500(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->icon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$500(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateSection()V
    .locals 5

    .line 346
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->actions:Lcom/cocosw/bottomsheet/ActionMenu;

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/ActionMenu;->removeInvisible()V

    .line 348
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$800(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->actions:Lcom/cocosw/bottomsheet/ActionMenu;

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/ActionMenu;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 349
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->actions:Lcom/cocosw/bottomsheet/ActionMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cocosw/bottomsheet/ActionMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 350
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 351
    :goto_0
    iget-object v3, p0, Lcom/cocosw/bottomsheet/BottomSheet;->actions:Lcom/cocosw/bottomsheet/ActionMenu;

    invoke-virtual {v3}, Lcom/cocosw/bottomsheet/ActionMenu;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 352
    iget-object v3, p0, Lcom/cocosw/bottomsheet/BottomSheet;->actions:Lcom/cocosw/bottomsheet/ActionMenu;

    invoke-virtual {v3, v1}, Lcom/cocosw/bottomsheet/ActionMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    if-eq v3, v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->actions:Lcom/cocosw/bottomsheet/ActionMenu;

    invoke-virtual {v0, v1}, Lcom/cocosw/bottomsheet/ActionMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 354
    new-instance v3, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 358
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;

    .line 359
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 360
    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->adapter:Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

    invoke-virtual {v1, v0}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->setSections([Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;)V

    return-void

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->adapter:Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

    iget-object v0, v0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_3
    return-void
.end method


# virtual methods
.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$1000(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Lcom/cocosw/bottomsheet/ActionMenu;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .line 470
    invoke-direct {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->updateSection()V

    .line 471
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->adapter:Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->notifyDataSetChanged()V

    .line 472
    invoke-direct {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->setListLayout()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 435
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 436
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cocosw/bottomsheet/BottomSheet;->init(Landroid/content/Context;)V

    .line 438
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    .line 439
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x50

    .line 440
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 442
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10100f4

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 444
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 448
    new-instance v0, Lcom/cocosw/bottomsheet/BottomSheet$7;

    invoke-direct {v0, p0}, Lcom/cocosw/bottomsheet/BottomSheet$7;-><init>(Lcom/cocosw/bottomsheet/BottomSheet;)V

    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 457
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :catchall_0
    move-exception p1

    .line 446
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method protected onStart()V
    .locals 0

    .line 404
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 405
    invoke-direct {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->showShortItems()V

    return-void
.end method

.method public setCanceledOnSwipeDown(Z)V
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->cancelOnSwipeDown:Z

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 137
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 138
    iput-boolean p1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->cancelOnTouchOutside:Z

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->showListener:Landroid/content/DialogInterface$OnShowListener;

    return-void
.end method
