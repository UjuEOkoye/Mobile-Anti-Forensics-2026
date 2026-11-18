.class public Lcom/sothree/slidinguppanel/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final BASE_SETTLE_DURATION:I = 0x100

.field public static final DIRECTION_ALL:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x2

.field public static final EDGE_ALL:I = 0xf

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field private static final EDGE_SIZE:I = 0x14

.field public static final EDGE_TOP:I = 0x4

.field public static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewDragHelper"

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroidx/core/widget/ScrollerCompat;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 327
    new-instance v0, Lcom/sothree/slidinguppanel/ViewDragHelper$1;

    invoke-direct {v0}, Lcom/sothree/slidinguppanel/ViewDragHelper$1;-><init>()V

    sput-object v0, Lcom/sothree/slidinguppanel/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/animation/Interpolator;Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;)V
    .locals 1

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 116
    iput v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    .line 334
    new-instance v0, Lcom/sothree/slidinguppanel/ViewDragHelper$2;

    invoke-direct {v0, p0}, Lcom/sothree/slidinguppanel/ViewDragHelper$2;-><init>(Lcom/sothree/slidinguppanel/ViewDragHelper;)V

    iput-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_2

    if-eqz p4, :cond_1

    .line 412
    iput-object p2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 413
    iput-object p4, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCallback:Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;

    .line 415
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 416
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float p4, p4, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p4, v0

    float-to-int p4, p4

    .line 417
    iput p4, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mEdgeSize:I

    .line 419
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p4

    iput p4, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    .line 420
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p4

    int-to-float p4, p4

    iput p4, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mMaxVelocity:F

    .line 421
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mMinVelocity:F

    if-eqz p3, :cond_0

    goto :goto_0

    .line 422
    :cond_0
    sget-object p3, Lcom/sothree/slidinguppanel/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-static {p1, p3}, Landroidx/core/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroidx/core/widget/ScrollerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    return-void

    .line 409
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 406
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parent view may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkNewEdgeDrag(FFII)Z
    .locals 3

    .line 1267
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 1268
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 1270
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    const/4 v1, 0x0

    if-ne v0, p4, :cond_2

    iget v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v0, p4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_2

    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_2

    iget v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    int-to-float v2, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p2, p2, v0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    .line 1276
    iget-object p2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCallback:Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;

    invoke-virtual {p2, p4}, Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1277
    iget-object p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mEdgeDragsLocked:[I

    aget p2, p1, p3

    or-int/2addr p2, p4

    aput p2, p1, p3

    return v1

    .line 1280
    :cond_1
    iget-object p2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget p2, p2, p3

    and-int/2addr p2, p4

    if-nez p2, :cond_2

    iget p2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1297
    :cond_0
    iget-object v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCallback:Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;

    invoke-virtual {v1, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1298
    :goto_0
    iget-object v3, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCallback:Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;

    invoke-virtual {v3, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    mul-float p2, p2, p2

    mul-float p3, p3, p3

    add-float/2addr p2, p3

    .line 1301
    iget p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    mul-int p1, p1, p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    return v2

    :cond_3
    return v0

    :cond_4
    if-eqz v1, :cond_6

    .line 1303
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    return v2

    :cond_5
    return v0

    :cond_6
    if-eqz p1, :cond_7

    .line 1305
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method private clampMag(FFF)F
    .locals 2

    .line 698
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    return v1

    :cond_0
    cmpl-float p2, v0, p3

    if-lez p2, :cond_2

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    return p3

    :cond_1
    neg-float p1, p3

    :cond_2
    return p1
.end method

.method private clampMag(III)I
    .locals 1

    .line 681
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-le v0, p3, :cond_2

    if-lez p1, :cond_1

    return p3

    :cond_1
    neg-int p1, p3

    :cond_2
    return p1
.end method

.method private clearMotionHistory()V
    .locals 2

    .line 811
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 814
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 815
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 816
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 817
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 818
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 819
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 820
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 821
    iput v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mPointersDown:I

    return-void
.end method

.method private clearMotionHistory(I)V
    .locals 2

    .line 825
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_1

    array-length v1, v0

    if-gt v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 828
    aput v1, v0, p1

    .line 829
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    .line 830
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    .line 831
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    .line 832
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialEdgesTouched:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 833
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mEdgeDragsInProgress:[I

    aput v1, v0, p1

    .line 834
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mEdgeDragsLocked:[I

    aput v1, v0, p1

    .line 835
    iget v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mPointersDown:I

    :cond_1
    :goto_0
    return-void
.end method

.method private computeAxisDuration(III)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 654
    div-int/lit8 v1, v0, 0x2

    .line 655
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v1, v1

    .line 657
    invoke-direct {p0, v2}, Lcom/sothree/slidinguppanel/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v2

    mul-float v2, v2, v1

    add-float/2addr v1, v2

    .line 660
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_1

    int-to-float p1, p2

    div-float/2addr v1, p1

    .line 662
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 664
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    add-float/2addr p1, v0

    const/high16 p2, 0x43800000    # 256.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    :goto_0
    const/16 p2, 0x258

    .line 667
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .locals 6

    .line 628
    iget v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mMinVelocity:F

    float-to-int v0, v0

    iget v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mMaxVelocity:F

    float-to-int v1, v1

    invoke-direct {p0, p4, v0, v1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->clampMag(III)I

    move-result p4

    .line 629
    iget v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mMinVelocity:F

    float-to-int v0, v0

    iget v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mMaxVelocity:F

    float-to-int v1, v1

    invoke-direct {p0, p5, v0, v1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->clampMag(III)I

    move-result p5

    .line 630
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 631
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 632
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 633
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v4, v2, v3

    add-int v5, v0, v1

    if-eqz p4, :cond_0

    int-to-float v0, v2

    int-to-float v2, v4

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    int-to-float v2, v5

    :goto_0
    div-float/2addr v0, v2

    if-eqz p5, :cond_1

    int-to-float v1, v3

    int-to-float v2, v4

    goto :goto_1

    :cond_1
    int-to-float v1, v1

    int-to-float v2, v5

    :goto_1
    div-float/2addr v1, v2

    .line 642
    iget-object v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCallback:Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;

    invoke-virtual {v2, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, p2, p4, v2}, Lcom/sothree/slidinguppanel/ViewDragHelper;->computeAxisDuration(III)I

    move-result p2

    .line 643
    iget-object p4, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCallback:Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;

    invoke-virtual {p4, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result p1

    invoke-direct {p0, p3, p5, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->computeAxisDuration(III)I

    move-result p1

    int-to-float p2, p2

    mul-float p2, p2, v0

    int-to-float p1, p1

    mul-float p1, p1, v1

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method public static create(Landroid/view/ViewGroup;FLandroid/view/animation/Interpolator;Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;)Lcom/sothree/slidinguppanel/ViewDragHelper;
    .locals 0

    .line 389
    invoke-static {p0, p2, p3}, Lcom/sothree/slidinguppanel/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/view/animation/Interpolator;Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;)Lcom/sothree/slidinguppanel/ViewDragHelper;

    move-result-object p0

    .line 390
    iget p2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    div-float/2addr p3, p1

    mul-float p2, p2, p3

    float-to-int p1, p2

    iput p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    return-object p0
.end method

.method public static create(Landroid/view/ViewGroup;FLcom/sothree/slidinguppanel/ViewDragHelper$Callback;)Lcom/sothree/slidinguppanel/ViewDragHelper;
    .locals 1

    .line 373
    invoke-static {p0, p2}, Lcom/sothree/slidinguppanel/ViewDragHelper;->create(Landroid/view/ViewGroup;Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;)Lcom/sothree/slidinguppanel/ViewDragHelper;

    move-result-object p0

    .line 374
    iget p2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    mul-float p2, p2, v0

    float-to-int p1, p2

    iput p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    return-object p0
.end method

.method public static create(Landroid/view/ViewGroup;Landroid/view/animation/Interpolator;Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;)Lcom/sothree/slidinguppanel/ViewDragHelper;
    .locals 2

    .line 360
    new-instance v0, Lcom/sothree/slidinguppanel/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/sothree/slidinguppanel/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/animation/Interpolator;Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;)Lcom/sothree/slidinguppanel/ViewDragHelper;
    .locals 3

    .line 348
    new-instance v0, Lcom/sothree/slidinguppanel/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/animation/Interpolator;Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .locals 3

    const/4 v0, 0x1

    .line 800
    iput-boolean v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mReleaseInProgress:Z

    .line 801
    iget-object v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCallback:Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;

    iget-object v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1, v2, p1, p2}, Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    const/4 p1, 0x0

    .line 802
    iput-boolean p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mReleaseInProgress:Z

    .line 804
    iget p2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mDragState:I

    if-ne p2, v0, :cond_0

    .line 806
    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->setDragState(I)V

    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double v0, v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    .line 707
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private dragTo(IIII)V
    .locals 10

    .line 1421
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1422
    iget-object v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-eqz p3, :cond_0

    .line 1424
    iget-object v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCallback:Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;

    iget-object v3, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2, v3, p1, p3}, Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result p1

    .line 1425
    iget-object v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    move v6, p1

    if-eqz p4, :cond_1

    .line 1428
    iget-object p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCallback:Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;

    iget-object v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p1, v2, p2, p4}, Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result p2

    .line 1429
    iget-object p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v2, p2, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1
    move v7, p2

    if-nez p3, :cond_3

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    sub-int v8, v6, v0

    sub-int v9, v7, v1

    .line 1435
    iget-object v4, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCallback:Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;

    iget-object v5, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v4 .. v9}, Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 9

    .line 839
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_1

    array-length v1, v0

    if-gt v1, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 840
    new-array v1, p1, [F

    .line 841
    new-array v2, p1, [F

    .line 842
    new-array v3, p1, [F

    .line 843
    new-array v4, p1, [F

    .line 844
    new-array v5, p1, [I

    .line 845
    new-array v6, p1, [I

    .line 846
    new-array p1, p1, [I

    if-eqz v0, :cond_2

    .line 849
    array-length v7, v0

    const/4 v8, 0x0

    invoke-static {v0, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 850
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialMotionY:[F

    array-length v7, v0

    invoke-static {v0, v8, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 851
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mLastMotionX:[F

    array-length v7, v0

    invoke-static {v0, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 852
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mLastMotionY:[F

    array-length v7, v0

    invoke-static {v0, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 853
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v7, v0

    invoke-static {v0, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 854
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v7, v0

    invoke-static {v0, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 855
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mEdgeDragsLocked:[I

    array-length v7, v0

    invoke-static {v0, v8, p1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 858
    :cond_2
    iput-object v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    .line 859
    iput-object v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialMotionY:[F

    .line 860
    iput-object v3, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mLastMotionX:[F

    .line 861
    iput-object v4, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mLastMotionY:[F

    .line 862
    iput-object v5, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialEdgesTouched:[I

    .line 863
    iput-object v6, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 864
    iput-object p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mEdgeDragsLocked:[I

    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .locals 10

    .line 608
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 609
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v4, p1, v2

    sub-int v5, p2, v3

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    .line 615
    iget-object p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {p1}, Landroidx/core/widget/ScrollerCompat;->abortAnimation()V

    const/4 p1, 0x0

    .line 616
    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->setDragState(I)V

    return p1

    :cond_0
    move v7, v5

    .line 620
    iget-object v5, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v8, p3

    move v9, p4

    move v6, v4

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/sothree/slidinguppanel/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result p1

    move-object p2, v4

    move v4, v6

    .line 621
    iget-object v1, p2, Lcom/sothree/slidinguppanel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    move v6, p1

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Landroidx/core/widget/ScrollerCompat;->startScroll(IIIII)V

    const/4 p1, 0x2

    .line 623
    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->setDragState(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private getEdgesTouched(II)I
    .locals 3

    .line 1495
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1496
    :goto_0
    iget-object v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 1497
    :cond_1
    iget-object v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    .line 1498
    :cond_2
    iget-object p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    iget v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr p1, v1

    if-le p2, p1, :cond_3

    or-int/lit8 p1, v0, 0x8

    return p1

    :cond_3
    return v0
.end method

.method private releaseViewForPointerUp()V
    .locals 4

    .line 1408
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mMaxVelocity:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1409
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    .line 1410
    invoke-static {v0, v1}, Landroidx/core/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    iget v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mMinVelocity:F

    iget v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mMaxVelocity:F

    .line 1409
    invoke-direct {p0, v0, v1, v2}, Lcom/sothree/slidinguppanel/ViewDragHelper;->clampMag(FFF)F

    move-result v0

    .line 1412
    iget-object v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    .line 1413
    invoke-static {v1, v2}, Landroidx/core/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    iget v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mMinVelocity:F

    iget v3, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mMaxVelocity:F

    .line 1412
    invoke-direct {p0, v1, v2, v3}, Lcom/sothree/slidinguppanel/ViewDragHelper;->clampMag(FFF)F

    move-result v1

    .line 1415
    invoke-direct {p0, v0, v1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->dispatchViewReleased(FF)V

    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 2

    const/4 v0, 0x1

    .line 1247
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v0

    const/4 v1, 0x4

    .line 1250
    invoke-direct {p0, p2, p1, p3, v1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    const/4 v1, 0x2

    .line 1253
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const/16 v1, 0x8

    .line 1256
    invoke-direct {p0, p2, p1, p3, v1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result p1

    if-eqz p1, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    if-eqz v0, :cond_3

    .line 1261
    iget-object p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget p2, p1, p3

    or-int/2addr p2, v0

    aput p2, p1, p3

    .line 1262
    iget-object p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCallback:Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;

    invoke-virtual {p1, v0, p3}, Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    :cond_3
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 2

    .line 869
    invoke-direct {p0, p3}, Lcom/sothree/slidinguppanel/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    .line 870
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 871
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 872
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialEdgesTouched:[I

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {p0, p1, p2}, Lcom/sothree/slidinguppanel/ViewDragHelper;->getEdgesTouched(II)I

    move-result p1

    aput p1, v0, p3

    .line 873
    iget p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mPointersDown:I

    const/4 p2, 0x1

    shl-int/2addr p2, p3

    or-int/2addr p1, p2

    iput p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mPointersDown:I

    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 8

    .line 877
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 879
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 880
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 881
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 883
    iget-object v5, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mLastMotionX:[F

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mLastMotionY:[F

    if-eqz v6, :cond_0

    array-length v7, v5

    if-le v7, v2, :cond_0

    array-length v7, v6

    if-le v7, v2, :cond_0

    .line 885
    aput v3, v5, v2

    .line 886
    aput v4, v6, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 9

    .line 543
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->cancel()V

    .line 544
    iget v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 545
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->getCurrX()I

    move-result v0

    .line 546
    iget-object v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroidx/core/widget/ScrollerCompat;->getCurrY()I

    move-result v1

    .line 547
    iget-object v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroidx/core/widget/ScrollerCompat;->abortAnimation()V

    .line 548
    iget-object v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroidx/core/widget/ScrollerCompat;->getCurrX()I

    move-result v5

    .line 549
    iget-object v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroidx/core/widget/ScrollerCompat;->getCurrY()I

    move-result v6

    .line 550
    iget-object v3, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCallback:Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;

    iget-object v4, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v7, v5, v0

    sub-int v8, v6, v1

    invoke-virtual/range {v3 .. v8}, Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_0
    const/4 v0, 0x0

    .line 552
    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->setDragState(I)V

    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIIII)Z
    .locals 12

    .line 953
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 954
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 955
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 956
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 957
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_0
    if-ltz v4, :cond_1

    .line 962
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    add-int v5, p5, v2

    .line 963
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    if-lt v5, v7, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-ge v5, v7, :cond_0

    add-int v7, p6, v3

    .line 964
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v7, v8, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 965
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v10, v5, v8

    .line 966
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v11, v7, v5

    const/4 v7, 0x1

    move-object v5, p0

    move v8, p3

    move/from16 v9, p4

    .line 965
    invoke-virtual/range {v5 .. v11}, Lcom/sothree/slidinguppanel/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    neg-int p2, p3

    .line 972
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result p2

    if-nez p2, :cond_2

    move/from16 v9, p4

    neg-int p2, v9

    .line 973
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public cancel()V
    .locals 1

    const/4 v0, -0x1

    .line 529
    iput v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    .line 530
    invoke-direct {p0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->clearMotionHistory()V

    .line 532
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 534
    iput-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 2

    .line 491
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    .line 496
    iput-object p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 497
    iput p2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    .line 498
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCallback:Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    const/4 p1, 0x1

    .line 499
    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->setDragState(I)V

    return-void

    .line 492
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkTouchSlop(I)Z
    .locals 4

    .line 1325
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1327
    invoke-virtual {p0, p1, v2}, Lcom/sothree/slidinguppanel/ViewDragHelper;->checkTouchSlop(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public checkTouchSlop(II)Z
    .locals 6

    .line 1350
    invoke-virtual {p0, p2}, Lcom/sothree/slidinguppanel/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x2

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 1357
    :goto_1
    iget-object v3, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mLastMotionX:[F

    aget v3, v3, p2

    iget-object v4, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    aget v4, v4, p2

    sub-float/2addr v3, v4

    .line 1358
    iget-object v4, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mLastMotionY:[F

    aget v4, v4, p2

    iget-object v5, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialMotionY:[F

    aget p2, v5, p2

    sub-float/2addr v4, p2

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    mul-float v3, v3, v3

    mul-float v4, v4, v4

    add-float/2addr v3, v4

    .line 1361
    iget p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    mul-int p1, p1, p1

    int-to-float p1, p1

    cmpl-float p1, v3, p1

    if-lez p1, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    if-eqz v0, :cond_6

    .line 1363
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    return v2

    :cond_5
    return v1

    :cond_6
    if-eqz p1, :cond_7

    .line 1365
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    return v2

    :cond_7
    return v1
.end method

.method public continueSettling(Z)Z
    .locals 11

    .line 747
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 750
    :cond_0
    iget v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mDragState:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    .line 751
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    .line 752
    iget-object v4, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v4}, Landroidx/core/widget/ScrollerCompat;->getCurrX()I

    move-result v7

    .line 753
    iget-object v4, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v4}, Landroidx/core/widget/ScrollerCompat;->getCurrY()I

    move-result v8

    .line 754
    iget-object v4, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v9, v7, v4

    .line 755
    iget-object v4, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v10, v8, v4

    if-nez v0, :cond_1

    if-eqz v10, :cond_1

    .line 759
    iget-object p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTop(I)V

    return v2

    :cond_1
    if-eqz v9, :cond_2

    .line 764
    iget-object v4, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_2
    if-eqz v10, :cond_3

    .line 767
    iget-object v4, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_3
    if-nez v9, :cond_4

    if-eqz v10, :cond_5

    .line 771
    :cond_4
    iget-object v5, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCallback:Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;

    iget-object v6, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v5 .. v10}, Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_5
    if-eqz v0, :cond_6

    .line 774
    iget-object v4, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v4}, Landroidx/core/widget/ScrollerCompat;->getFinalX()I

    move-result v4

    if-ne v7, v4, :cond_6

    iget-object v4, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v4}, Landroidx/core/widget/ScrollerCompat;->getFinalY()I

    move-result v4

    if-ne v8, v4, :cond_6

    .line 777
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->abortAnimation()V

    .line 778
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->isFinished()Z

    move-result v0

    :cond_6
    if-nez v0, :cond_8

    if-eqz p1, :cond_7

    .line 783
    iget-object p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 785
    :cond_7
    invoke-virtual {p0, v1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->setDragState(I)V

    .line 790
    :cond_8
    :goto_0
    iget p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mDragState:I

    if-ne p1, v3, :cond_9

    return v2

    :cond_9
    return v1
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 3

    .line 1481
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1483
    iget-object v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCallback:Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;

    invoke-virtual {v2, v0}, Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1484
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 1485
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public flingCapturedView(IIII)V
    .locals 10

    .line 721
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mReleaseInProgress:Z

    if-eqz v0, :cond_0

    .line 726
    iget-object v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mScroller:Landroidx/core/widget/ScrollerCompat;

    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    .line 727
    invoke-static {v0, v4}, Landroidx/core/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v4, v0

    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    .line 728
    invoke-static {v0, v5}, Landroidx/core/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v5, v0

    move v6, p1

    move v8, p2

    move v7, p3

    move v9, p4

    .line 726
    invoke-virtual/range {v1 .. v9}, Landroidx/core/widget/ScrollerCompat;->fling(IIIIIIII)V

    const/4 p1, 0x2

    .line 731
    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->setDragState(I)V

    return-void

    .line 722
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getActivePointerId()I
    .locals 1

    .line 514
    iget v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    return-object v0
.end method

.method public getEdgeSize()I
    .locals 1

    .line 479
    iget v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mEdgeSize:I

    return v0
.end method

.method public getMinVelocity()F
    .locals 1

    .line 443
    iget v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mMinVelocity:F

    return v0
.end method

.method public getTouchSlop()I
    .locals 1

    .line 521
    iget v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mTouchSlop:I

    return v0
.end method

.method public getViewDragState()I
    .locals 1

    .line 452
    iget v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mDragState:I

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 1

    .line 1450
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sothree/slidinguppanel/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public isDragging()Z
    .locals 2

    .line 1404
    iget v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mDragState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEdgeTouched(I)Z
    .locals 4

    .line 1380
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1382
    invoke-virtual {p0, p1, v2}, Lcom/sothree/slidinguppanel/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isEdgeTouched(II)Z
    .locals 1

    .line 1400
    invoke-virtual {p0, p2}, Lcom/sothree/slidinguppanel/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialEdgesTouched:[I

    aget p2, v0, p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isPointerDown(I)Z
    .locals 2

    .line 905
    iget v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1466
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 1467
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 1468
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    if-lt p3, p2, :cond_1

    .line 1469
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p3, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8

    .line 1094
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1095
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    if-nez v0, :cond_0

    .line 1100
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->cancel()V

    .line 1103
    :cond_0
    iget-object v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 1104
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1106
    :cond_1
    iget-object v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    const/4 v3, 0x1

    if-eq v0, v3, :cond_10

    const/4 v4, 0x2

    if-eq v0, v4, :cond_b

    const/4 v4, 0x3

    if-eq v0, v4, :cond_9

    const/4 v4, 0x5

    if-eq v0, v4, :cond_7

    const/4 v4, 0x6

    if-eq v0, v4, :cond_2

    goto/16 :goto_5

    .line 1197
    :cond_2
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1198
    iget v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mDragState:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    if-ne v0, v1, :cond_6

    .line 1201
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_5

    .line 1203
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 1204
    iget v5, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    if-ne v4, v5, :cond_3

    goto :goto_1

    .line 1209
    :cond_3
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1210
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    float-to-int v5, v5

    float-to-int v6, v6

    .line 1211
    invoke-virtual {p0, v5, v6}, Lcom/sothree/slidinguppanel/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v5, v6, :cond_4

    .line 1212
    invoke-virtual {p0, v6, v4}, Lcom/sothree/slidinguppanel/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1213
    iget p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, -0x1

    :goto_2
    if-ne p1, v3, :cond_6

    .line 1220
    invoke-direct {p0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1223
    :cond_6
    invoke-direct {p0, v0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->clearMotionHistory(I)V

    return-void

    .line 1130
    :cond_7
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1131
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 1132
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 1134
    invoke-direct {p0, v2, p1, v0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1137
    iget v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mDragState:I

    if-nez v1, :cond_8

    float-to-int v1, v2

    float-to-int p1, p1

    .line 1140
    invoke-virtual {p0, v1, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object p1

    .line 1141
    invoke-virtual {p0, p1, v0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1143
    iget-object p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialEdgesTouched:[I

    aget p1, p1, v0

    .line 1144
    iget v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mTrackingEdges:I

    and-int v2, p1, v1

    if-eqz v2, :cond_13

    .line 1145
    iget-object v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCallback:Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;

    and-int/2addr p1, v1

    invoke-virtual {v2, p1, v0}, Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;->onEdgeTouched(II)V

    return-void

    :cond_8
    float-to-int v1, v2

    float-to-int p1, p1

    .line 1147
    invoke-virtual {p0, v1, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1152
    iget-object p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    return-void

    .line 1236
    :cond_9
    iget p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mDragState:I

    if-ne p1, v3, :cond_a

    const/4 p1, 0x0

    .line 1237
    invoke-direct {p0, p1, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 1239
    :cond_a
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->cancel()V

    return-void

    .line 1158
    :cond_b
    iget v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mDragState:I

    if-ne v0, v3, :cond_c

    .line 1159
    iget v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1160
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1161
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1162
    iget-object v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mLastMotionX:[F

    iget v3, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1163
    iget-object v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mLastMotionY:[F

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 1165
    iget-object v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->dragTo(IIII)V

    .line 1167
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    return-void

    .line 1170
    :cond_c
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_f

    .line 1172
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1174
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 1175
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1176
    iget-object v6, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    aget v6, v6, v1

    sub-float/2addr v4, v6

    .line 1177
    iget-object v6, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialMotionY:[F

    aget v6, v6, v1

    sub-float/2addr v5, v6

    .line 1179
    invoke-direct {p0, v4, v5, v1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1180
    iget v6, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mDragState:I

    if-ne v6, v3, :cond_d

    goto :goto_4

    .line 1185
    :cond_d
    iget-object v6, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    aget v6, v6, v1

    float-to-int v6, v6

    iget-object v7, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialMotionY:[F

    aget v7, v7, v1

    float-to-int v7, v7

    invoke-virtual {p0, v6, v7}, Lcom/sothree/slidinguppanel/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v6

    .line 1186
    invoke-direct {p0, v6, v4, v5}, Lcom/sothree/slidinguppanel/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1187
    invoke-virtual {p0, v6, v1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_4

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1191
    :cond_f
    :goto_4
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    return-void

    .line 1228
    :cond_10
    iget p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mDragState:I

    if-ne p1, v3, :cond_11

    .line 1229
    invoke-direct {p0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->releaseViewForPointerUp()V

    .line 1231
    :cond_11
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->cancel()V

    return-void

    .line 1110
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1112
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    float-to-int v2, v0

    float-to-int v3, v1

    .line 1113
    invoke-virtual {p0, v2, v3}, Lcom/sothree/slidinguppanel/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v2

    .line 1115
    invoke-direct {p0, v0, v1, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1120
    invoke-virtual {p0, v2, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1122
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v0, v0, p1

    .line 1123
    iget v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mTrackingEdges:I

    and-int v2, v0, v1

    if-eqz v2, :cond_13

    .line 1124
    iget-object v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCallback:Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;

    and-int/2addr v0, v1

    invoke-virtual {v2, v0, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;->onEdgeTouched(II)V

    :cond_13
    :goto_5
    return-void
.end method

.method setDragState(I)V
    .locals 1

    .line 909
    iget v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mDragState:I

    if-eq v0, p1, :cond_0

    .line 910
    iput p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mDragState:I

    .line 911
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCallback:Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 912
    iget p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mDragState:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 913
    iput-object p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 0

    .line 468
    iput p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mTrackingEdges:I

    return-void
.end method

.method public setMinVelocity(F)V
    .locals 0

    .line 432
    iput p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mMinVelocity:F

    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3

    .line 588
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mReleaseInProgress:Z

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    .line 594
    invoke-static {v0, v1}, Landroidx/core/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    .line 595
    invoke-static {v1, v2}, Landroidx/core/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    .line 593
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result p1

    return p1

    .line 589
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 984
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 985
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    if-nez v0, :cond_0

    .line 990
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->cancel()V

    .line 993
    :cond_0
    iget-object v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 994
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 996
    :cond_1
    iget-object v2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v4, :cond_a

    if-eq v0, v3, :cond_5

    const/4 v5, 0x3

    if-eq v0, v5, :cond_a

    const/4 v5, 0x5

    if-eq v0, v5, :cond_3

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    goto/16 :goto_3

    .line 1072
    :cond_2
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    .line 1073
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_3

    .line 1020
    :cond_3
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1021
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1022
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 1024
    invoke-direct {p0, v5, p1, v0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 1027
    iget v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mDragState:I

    if-nez v1, :cond_4

    .line 1028
    iget-object p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialEdgesTouched:[I

    aget p1, p1, v0

    .line 1029
    iget v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mTrackingEdges:I

    and-int v3, p1, v1

    if-eqz v3, :cond_d

    .line 1030
    iget-object v3, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCallback:Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;

    and-int/2addr p1, v1

    invoke-virtual {v3, p1, v0}, Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_3

    :cond_4
    if-ne v1, v3, :cond_d

    float-to-int v1, v5

    float-to-int p1, p1

    .line 1034
    invoke-virtual {p0, v1, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object p1

    .line 1035
    iget-object v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne p1, v1, :cond_d

    .line 1036
    invoke-virtual {p0, p1, v0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_3

    .line 1044
    :cond_5
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_9

    .line 1045
    iget-object v3, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialMotionY:[F

    if-eqz v3, :cond_9

    .line 1046
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 1047
    iget-object v5, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    array-length v5, v5

    if-ge v3, v5, :cond_8

    iget-object v5, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialMotionY:[F

    array-length v5, v5

    if-lt v3, v5, :cond_6

    goto :goto_1

    .line 1050
    :cond_6
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1051
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 1052
    iget-object v7, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    aget v7, v7, v3

    sub-float/2addr v5, v7

    .line 1053
    iget-object v7, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialMotionY:[F

    aget v7, v7, v3

    sub-float/2addr v6, v7

    .line 1055
    invoke-direct {p0, v5, v6, v3}, Lcom/sothree/slidinguppanel/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1056
    iget v7, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mDragState:I

    if-ne v7, v4, :cond_7

    goto :goto_2

    .line 1061
    :cond_7
    iget-object v7, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialMotionX:[F

    aget v7, v7, v3

    float-to-int v7, v7

    iget-object v8, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialMotionY:[F

    aget v8, v8, v3

    float-to-int v8, v8

    invoke-virtual {p0, v7, v8}, Lcom/sothree/slidinguppanel/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 1062
    invoke-direct {p0, v7, v5, v6}, Lcom/sothree/slidinguppanel/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1063
    invoke-virtual {p0, v7, v3}, Lcom/sothree/slidinguppanel/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_8
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1067
    :cond_9
    :goto_2
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 1079
    :cond_a
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->cancel()V

    goto :goto_3

    .line 1000
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1001
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1002
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    .line 1003
    invoke-direct {p0, v0, v1, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->saveInitialMotion(FFI)V

    float-to-int v0, v0

    float-to-int v1, v1

    .line 1005
    invoke-virtual {p0, v0, v1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v0

    .line 1008
    iget-object v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v0, v1, :cond_c

    iget v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mDragState:I

    if-ne v1, v3, :cond_c

    .line 1009
    invoke-virtual {p0, v0, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1012
    :cond_c
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v0, v0, p1

    .line 1013
    iget v1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mTrackingEdges:I

    and-int v3, v0, v1

    if-eqz v3, :cond_d

    .line 1014
    iget-object v3, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCallback:Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;

    and-int/2addr v0, v1

    invoke-virtual {v3, v0, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 1084
    :cond_d
    :goto_3
    iget p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mDragState:I

    if-ne p1, v4, :cond_e

    return v4

    :cond_e
    return v2
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 p1, -0x1

    .line 571
    iput p1, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    const/4 p1, 0x0

    .line 573
    invoke-direct {p0, p2, p3, p1, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result p1

    return p1
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 2

    .line 928
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    if-ne v0, p2, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 932
    iget-object v0, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mCallback:Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 933
    iput p2, p0, Lcom/sothree/slidinguppanel/ViewDragHelper;->mActivePointerId:I

    .line 934
    invoke-virtual {p0, p1, p2}, Lcom/sothree/slidinguppanel/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
