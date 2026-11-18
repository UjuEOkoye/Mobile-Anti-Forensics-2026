.class Lcom/cocosw/bottomsheet/ClosableSlidingLayout;
.super Landroid/widget/FrameLayout;
.source "ClosableSlidingLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;,
        Lcom/cocosw/bottomsheet/ClosableSlidingLayout$SlideListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private final MINVEL:F

.field private collapsible:Z

.field private height:I

.field private mActivePointerId:I

.field private mDragHelper:Landroidx/customview/widget/ViewDragHelper;

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mListener:Lcom/cocosw/bottomsheet/ClosableSlidingLayout$SlideListener;

.field mTarget:Landroid/view/View;

.field swipeable:Z

.field private top:I

.field private yDiff:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->swipeable:Z

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->collapsible:Z

    .line 46
    new-instance p1, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;-><init>(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;Lcom/cocosw/bottomsheet/ClosableSlidingLayout$1;)V

    const p2, 0x3f4ccccd    # 0.8f

    invoke-static {p0, p2, p1}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 47
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x43c80000    # 400.0f

    mul-float p1, p1, p2

    iput p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->MINVEL:F

    return-void
.end method

.method static synthetic access$100(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->MINVEL:F

    return p0
.end method

.method static synthetic access$200(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;Landroid/view/View;F)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->dismiss(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$300(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->top:I

    return p0
.end method

.method static synthetic access$400(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->height:I

    return p0
.end method

.method static synthetic access$500(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)Landroidx/customview/widget/ViewDragHelper;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    return-object p0
.end method

.method static synthetic access$600(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)Lcom/cocosw/bottomsheet/ClosableSlidingLayout$SlideListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mListener:Lcom/cocosw/bottomsheet/ClosableSlidingLayout$SlideListener;

    return-object p0
.end method

.method private canChildScrollUp()Z
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mTarget:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method private dismiss(Landroid/view/View;F)V
    .locals 2

    .line 158
    iget-object p2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->top:I

    iget v1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->height:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 159
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private expand(Landroid/view/View;F)V
    .locals 0

    .line 152
    iget-object p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mListener:Lcom/cocosw/bottomsheet/ClosableSlidingLayout$SlideListener;

    if-eqz p1, :cond_0

    .line 153
    invoke-interface {p1}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$SlideListener;->onOpened()V

    :cond_0
    return-void
.end method

.method private getMotionEventY(Landroid/view/MotionEvent;I)F
    .locals 0

    .line 115
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-gez p2, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    .line 119
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    return p1
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 54
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->canChildScrollUp()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v5, -0x40800000    # -1.0f

    if-eqz v0, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    goto :goto_0

    .line 83
    :cond_2
    iget v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mActivePointerId:I

    if-ne v0, v4, :cond_3

    return v2

    .line 86
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->getMotionEventY(Landroid/view/MotionEvent;I)F

    move-result v0

    cmpl-float v3, v0, v5

    if-nez v3, :cond_4

    return v2

    .line 90
    :cond_4
    iget v3, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mInitialMotionY:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->yDiff:F

    .line 91
    iget-boolean v3, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->swipeable:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    iget-boolean v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_7

    .line 92
    iput-boolean v1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mIsBeingDragged:Z

    .line 93
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0, v2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    goto :goto_0

    .line 71
    :cond_5
    invoke-virtual {p0, v2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->height:I

    .line 72
    invoke-virtual {p0, v2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->top:I

    .line 73
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mActivePointerId:I

    .line 74
    iput-boolean v2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mIsBeingDragged:Z

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->getMotionEventY(Landroid/view/MotionEvent;I)F

    move-result v0

    cmpl-float v1, v0, v5

    if-nez v1, :cond_6

    return v2

    .line 79
    :cond_6
    iput v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mInitialMotionY:F

    .line 80
    iput v3, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->yDiff:F

    .line 97
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 98
    iget-boolean p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mIsBeingDragged:Z

    return p1

    .line 60
    :cond_8
    :goto_1
    iput v4, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mActivePointerId:I

    .line 61
    iput-boolean v2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mIsBeingDragged:Z

    .line 62
    iget-boolean p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->collapsible:Z

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->yDiff:F

    neg-float p1, p1

    iget-object v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9

    .line 63
    iget-object p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroidx/customview/widget/ViewDragHelper;->getCapturedView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->expand(Landroid/view/View;F)V

    .line 65
    :cond_9
    iget-object p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    :cond_a
    :goto_2
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->canChildScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->swipeable:Z

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 p1, 0x1

    return p1

    .line 125
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method setCollapsible(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->collapsible:Z

    return-void
.end method

.method setSlideListener(Lcom/cocosw/bottomsheet/ClosableSlidingLayout$SlideListener;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mListener:Lcom/cocosw/bottomsheet/ClosableSlidingLayout$SlideListener;

    return-void
.end method
