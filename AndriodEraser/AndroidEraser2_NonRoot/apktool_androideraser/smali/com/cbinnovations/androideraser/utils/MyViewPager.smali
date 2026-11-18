.class public Lcom/cbinnovations/androideraser/utils/MyViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "MyViewPager.java"


# instance fields
.field private currentPage:I

.field private pagingEnabled:Z


# direct methods
.method static bridge synthetic -$$Nest$fputcurrentPage(Lcom/cbinnovations/androideraser/utils/MyViewPager;I)V
    .locals 0

    iput p1, p0, Lcom/cbinnovations/androideraser/utils/MyViewPager;->currentPage:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/cbinnovations/androideraser/utils/MyViewPager;->pagingEnabled:Z

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/cbinnovations/androideraser/utils/MyViewPager;->currentPage:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/cbinnovations/androideraser/utils/MyViewPager;->pagingEnabled:Z

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/cbinnovations/androideraser/utils/MyViewPager;->currentPage:I

    return-void
.end method


# virtual methods
.method public addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 1

    .line 40
    new-instance v0, Lcom/cbinnovations/androideraser/utils/MyViewPager$1;

    invoke-direct {v0, p0, p1}, Lcom/cbinnovations/androideraser/utils/MyViewPager$1;-><init>(Lcom/cbinnovations/androideraser/utils/MyViewPager;Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/cbinnovations/androideraser/utils/MyViewPager;->currentPage:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/cbinnovations/androideraser/utils/MyViewPager;->pagingEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/cbinnovations/androideraser/utils/MyViewPager;->pagingEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setPagingEnabled(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/cbinnovations/androideraser/utils/MyViewPager;->pagingEnabled:Z

    return-void
.end method
