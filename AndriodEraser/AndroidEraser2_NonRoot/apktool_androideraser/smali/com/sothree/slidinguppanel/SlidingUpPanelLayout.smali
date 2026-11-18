.class public Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;
.super Landroid/view/ViewGroup;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;,
        Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;,
        Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$SimplePanelSlideListener;,
        Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;,
        Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANCHOR_POINT:F = 1.0f

.field private static final DEFAULT_ATTRS:[I

.field private static final DEFAULT_CLIP_PANEL_FLAG:Z = true

.field private static final DEFAULT_FADE_COLOR:I = -0x67000000

.field private static final DEFAULT_MIN_FLING_VELOCITY:I = 0x190

.field private static final DEFAULT_OVERLAY_FLAG:Z = false

.field private static final DEFAULT_PANEL_HEIGHT:I = 0x44

.field private static final DEFAULT_PARALLAX_OFFSET:I = 0x0

.field private static final DEFAULT_SHADOW_HEIGHT:I = 0x4

.field private static DEFAULT_SLIDE_STATE:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState; = null

.field public static final SLIDING_STATE:Ljava/lang/String; = "sliding_state"

.field private static final TAG:Ljava/lang/String; = "SlidingUpPanelLayout"


# instance fields
.field private mAnchorPoint:F

.field private mClipPanel:Z

.field private mCoveredFadeColor:I

.field private final mCoveredFadePaint:Landroid/graphics/Paint;

.field private final mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

.field private mDragView:Landroid/view/View;

.field private mDragViewResId:I

.field private mFadeOnClickListener:Landroid/view/View$OnClickListener;

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsScrollableViewHandlingTouch:Z

.field private mIsSlidingUp:Z

.field private mIsTouchEnabled:Z

.field private mIsUnableToDrag:Z

.field private mLastNotDraggingSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

.field private mMainView:Landroid/view/View;

.field private mMinFlingVelocity:I

.field private mOverlayContent:Z

.field private mPanelHeight:I

.field private final mPanelSlideListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;",
            ">;"
        }
    .end annotation
.end field

.field private mParallaxOffset:I

.field private mPrevMotionX:F

.field private mPrevMotionY:F

.field private mScrollableView:Landroid/view/View;

.field private mScrollableViewHelper:Lcom/sothree/slidinguppanel/ScrollableViewHelper;

.field private mScrollableViewResId:I

.field private final mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowHeight:I

.field private mSlideOffset:F

.field private mSlideRange:I

.field private mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

.field private mSlideableView:Landroid/view/View;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    sput-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->DEFAULT_SLIDE_STATE:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    const v0, 0x10100af

    .line 74
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->DEFAULT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 266
    invoke-direct {p0, p1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 270
    invoke-direct {p0, p1, p2, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 274
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x190

    .line 85
    iput p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    const/high16 v0, -0x67000000

    .line 90
    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 100
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 110
    iput v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    .line 115
    iput v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    .line 120
    iput v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mParallaxOffset:I

    const/4 v2, 0x0

    .line 130
    iput-boolean v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    const/4 v3, 0x1

    .line 135
    iput-boolean v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mClipPanel:Z

    .line 147
    iput v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragViewResId:I

    .line 154
    new-instance v4, Lcom/sothree/slidinguppanel/ScrollableViewHelper;

    invoke-direct {v4}, Lcom/sothree/slidinguppanel/ScrollableViewHelper;-><init>()V

    iput-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mScrollableViewHelper:Lcom/sothree/slidinguppanel/ScrollableViewHelper;

    .line 177
    sget-object v4, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->DEFAULT_SLIDE_STATE:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    iput-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 182
    iput-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mLastNotDraggingSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 198
    iput v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    .line 215
    iput-boolean v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    .line 217
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListeners:Ljava/util/List;

    .line 227
    iput-boolean v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 229
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 276
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isInEditMode()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 277
    iput-object v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 278
    iput-object v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    return-void

    :cond_0
    if-eqz p2, :cond_3

    .line 284
    sget-object v5, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->DEFAULT_ATTRS:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 287
    invoke-virtual {v5, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 288
    invoke-virtual {p0, v7}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setGravity(I)V

    .line 289
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 293
    :cond_1
    sget-object v5, Lcom/sothree/slidinguppanel/library/R$styleable;->SlidingUpPanelLayout:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 296
    sget v5, Lcom/sothree/slidinguppanel/library/R$styleable;->SlidingUpPanelLayout_umanoPanelHeight:I

    invoke-virtual {p2, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    .line 297
    sget v5, Lcom/sothree/slidinguppanel/library/R$styleable;->SlidingUpPanelLayout_umanoShadowHeight:I

    invoke-virtual {p2, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    .line 298
    sget v5, Lcom/sothree/slidinguppanel/library/R$styleable;->SlidingUpPanelLayout_umanoParallaxOffset:I

    invoke-virtual {p2, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mParallaxOffset:I

    .line 300
    sget v5, Lcom/sothree/slidinguppanel/library/R$styleable;->SlidingUpPanelLayout_umanoFlingVelocity:I

    invoke-virtual {p2, v5, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    .line 301
    sget p3, Lcom/sothree/slidinguppanel/library/R$styleable;->SlidingUpPanelLayout_umanoFadeColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 303
    sget p3, Lcom/sothree/slidinguppanel/library/R$styleable;->SlidingUpPanelLayout_umanoDragView:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragViewResId:I

    .line 304
    sget p3, Lcom/sothree/slidinguppanel/library/R$styleable;->SlidingUpPanelLayout_umanoScrollableView:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mScrollableViewResId:I

    .line 306
    sget p3, Lcom/sothree/slidinguppanel/library/R$styleable;->SlidingUpPanelLayout_umanoOverlay:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    .line 307
    sget p3, Lcom/sothree/slidinguppanel/library/R$styleable;->SlidingUpPanelLayout_umanoClipPanel:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mClipPanel:Z

    .line 309
    sget p3, Lcom/sothree/slidinguppanel/library/R$styleable;->SlidingUpPanelLayout_umanoAnchorPoint:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    .line 311
    invoke-static {}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->values()[Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    move-result-object p3

    sget v0, Lcom/sothree/slidinguppanel/library/R$styleable;->SlidingUpPanelLayout_umanoInitialState:I

    sget-object v4, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->DEFAULT_SLIDE_STATE:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {v4}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->ordinal()I

    move-result v4

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    aget-object p3, p3, v0

    iput-object p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 313
    sget p3, Lcom/sothree/slidinguppanel/library/R$styleable;->SlidingUpPanelLayout_umanoScrollInterpolator:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eq p3, v1, :cond_2

    .line 315
    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p3

    goto :goto_0

    :cond_2
    move-object p3, v6

    .line 317
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_3
    move-object p3, v6

    .line 321
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 322
    iget p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    const/high16 v0, 0x3f000000    # 0.5f

    if-ne p2, v1, :cond_4

    const/high16 p2, 0x42880000    # 68.0f

    mul-float p2, p2, p1

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 323
    iput p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    .line 325
    :cond_4
    iget p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    if-ne p2, v1, :cond_5

    const/high16 p2, 0x40800000    # 4.0f

    mul-float p2, p2, p1

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 326
    iput p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    .line 328
    :cond_5
    iget p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mParallaxOffset:I

    if-ne p2, v1, :cond_6

    const/4 p2, 0x0

    mul-float p2, p2, p1

    float-to-int p2, p2

    .line 329
    iput p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mParallaxOffset:I

    .line 332
    :cond_6
    iget p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    if-lez p2, :cond_8

    .line 333
    iget-boolean p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz p2, :cond_7

    .line 334
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/sothree/slidinguppanel/library/R$drawable;->above_shadow:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 336
    :cond_7
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/sothree/slidinguppanel/library/R$drawable;->below_shadow:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 339
    :cond_8
    iput-object v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 342
    :goto_2
    invoke-virtual {p0, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setWillNotDraw(Z)V

    .line 344
    new-instance p2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;

    invoke-direct {p2, p0, v6}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;-><init>(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$1;)V

    invoke-static {p0, v0, p3, p2}, Lcom/sothree/slidinguppanel/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/view/animation/Interpolator;Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;)Lcom/sothree/slidinguppanel/ViewDragHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    .line 345
    iget p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    int-to-float p3, p3

    mul-float p3, p3, p1

    invoke-virtual {p2, p3}, Lcom/sothree/slidinguppanel/ViewDragHelper;->setMinVelocity(F)V

    .line 347
    iput-boolean v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsTouchEnabled:Z

    return-void
.end method

.method static synthetic access$100(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->onPanelDragged(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;F)I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    return p0
.end method

.method static synthetic access$200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    return p0
.end method

.method static synthetic access$300(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    return p0
.end method

.method static synthetic access$400(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Lcom/sothree/slidinguppanel/ViewDragHelper;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    return p0
.end method

.method static synthetic access$602(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    return p1
.end method

.method static synthetic access$700(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;I)F
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->computeSlideOffset(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->applyParallaxForCurrentSlideOffset()V

    return-void
.end method

.method static synthetic access$900(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelStateInternal(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;)V

    return-void
.end method

.method private applyParallaxForCurrentSlideOffset()V
    .locals 2

    .line 1152
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mParallaxOffset:I

    if-lez v0, :cond_0

    .line 1153
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getCurrentParallaxOffset()I

    move-result v0

    .line 1154
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    int-to-float v0, v0

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method private computePanelTopPosition(F)I
    .locals 2

    .line 1063
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1064
    :goto_0
    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v1, v1

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 1066
    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v1, :cond_1

    .line 1067
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    return v0

    .line 1068
    :cond_1
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    return v1
.end method

.method private computeSlideOffset(I)F
    .locals 2

    const/4 v0, 0x0

    .line 1076
    invoke-direct {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v0

    .line 1080
    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v1, :cond_0

    sub-int/2addr v0, p1

    int-to-float p1, v0

    :goto_0
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1

    :cond_0
    sub-int/2addr p1, v0

    int-to-float p1, p1

    goto :goto_0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 1

    .line 708
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 709
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isViewUnder(Landroid/view/View;II)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    .line 1049
    new-array v2, v1, [I

    .line 1050
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1051
    new-array v1, v1, [I

    .line 1052
    invoke-virtual {p0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getLocationOnScreen([I)V

    .line 1053
    aget v3, v1, v0

    add-int/2addr v3, p2

    const/4 p2, 0x1

    .line 1054
    aget v1, v1, p2

    add-int/2addr v1, p3

    .line 1055
    aget p3, v2, v0

    if-lt v3, p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr p3, v4

    if-ge v3, p3, :cond_1

    aget p3, v2, p2

    if-lt v1, p3, :cond_1

    .line 1056
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p3, p1

    if-ge v1, p3, :cond_1

    return p2

    :cond_1
    return v0
.end method

.method private onPanelDragged(I)V
    .locals 5

    .line 1159
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->DRAGGING:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-eq v0, v1, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mLastNotDraggingSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 1162
    :cond_0
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->DRAGGING:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-direct {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelStateInternal(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;)V

    .line 1164
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->computeSlideOffset(I)F

    move-result v0

    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    .line 1165
    invoke-direct {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->applyParallaxForCurrentSlideOffset()V

    .line 1167
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    .line 1170
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    .line 1171
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    sub-int/2addr v1, v2

    .line 1173
    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    const/4 v3, 0x0

    const/4 v4, -0x1

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    iget-boolean v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez v2, :cond_3

    .line 1175
    iget-boolean v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr p1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int p1, v2, p1

    :goto_0
    iput p1, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    .line 1176
    iget p1, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    if-ne p1, v1, :cond_2

    .line 1177
    iput v4, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    .line 1179
    :cond_2
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void

    .line 1180
    :cond_3
    iget p1, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    if-eq p1, v4, :cond_4

    iget-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez p1, :cond_4

    .line 1181
    iput v4, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    .line 1182
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_4
    return-void
.end method

.method private setPanelStateInternal(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;)V
    .locals 1

    .line 1141
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-ne v0, p1, :cond_0

    return-void

    .line 1143
    :cond_0
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 1144
    invoke-virtual {p0, p0, v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->dispatchOnPanelStateChanged(Landroid/view/View;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;)V

    return-void
.end method


# virtual methods
.method public addPanelSlideListener(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;)V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListeners:Ljava/util/List;

    monitor-enter v0

    .line 501
    :try_start_0
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11

    .line 1292
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1293
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 1294
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 1295
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 1296
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_0
    if-ltz v4, :cond_1

    .line 1299
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    add-int v5, p4, v2

    .line 1300
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    if-lt v5, v7, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-ge v5, v7, :cond_0

    add-int v7, p5, v3

    .line 1301
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v7, v8, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 1302
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v9, v5, v8

    .line 1303
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v10, v7, v5

    const/4 v7, 0x1

    move-object v5, p0

    move v8, p3

    .line 1302
    invoke-virtual/range {v5 .. v10}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    neg-int p2, p3

    .line 1308
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1326
    instance-of v0, p1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public computeScroll()V
    .locals 2

    .line 1248
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1249
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->abort()V

    return-void

    .line 1254
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 4

    .line 646
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListeners:Ljava/util/List;

    monitor-enter v0

    .line 647
    :try_start_0
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    .line 648
    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    invoke-interface {v2, p1, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    goto :goto_0

    .line 650
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method dispatchOnPanelStateChanged(Landroid/view/View;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;)V
    .locals 3

    .line 655
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListeners:Ljava/util/List;

    monitor-enter v0

    .line 656
    :try_start_0
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;

    .line 657
    invoke-interface {v2, p1, p2, p3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;->onPanelStateChanged(Landroid/view/View;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;)V

    goto :goto_0

    .line 659
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x20

    .line 660
    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 659
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 959
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 961
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isTouchEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 966
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 967
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 970
    iput-boolean v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    .line 971
    iput v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPrevMotionX:F

    .line 972
    iput v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPrevMotionY:F

    goto/16 :goto_1

    :cond_1
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v0, v4, :cond_b

    .line 974
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPrevMotionX:F

    sub-float v0, v1, v0

    .line 975
    iget v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPrevMotionY:F

    sub-float v4, v2, v4

    .line 976
    iput v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPrevMotionX:F

    .line 977
    iput v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPrevMotionY:F

    .line 979
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 981
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 986
    :cond_2
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mScrollableView:Landroid/view/View;

    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionY:F

    float-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 987
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 991
    :cond_3
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, -0x1

    :goto_0
    int-to-float v2, v2

    mul-float v2, v2, v4

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-lez v2, :cond_7

    .line 994
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mScrollableViewHelper:Lcom/sothree/slidinguppanel/ScrollableViewHelper;

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/sothree/slidinguppanel/ScrollableViewHelper;->getScrollableViewScrollPosition(Landroid/view/View;Z)I

    move-result v0

    if-lez v0, :cond_5

    .line 995
    iput-boolean v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    .line 996
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1002
    :cond_5
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    if-eqz v0, :cond_6

    .line 1004
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x3

    .line 1005
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1006
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1007
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1011
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1014
    :cond_6
    iput-boolean v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    .line 1015
    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_7
    if-eqz v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    int-to-float v0, v1

    mul-float v4, v4, v0

    cmpg-float v0, v4, v6

    if-gez v0, :cond_c

    .line 1019
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 1020
    iput-boolean v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    .line 1021
    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1027
    :cond_9
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1028
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->cancel()V

    .line 1029
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1032
    :cond_a
    iput-boolean v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    .line 1033
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_b
    if-ne v0, v5, :cond_c

    .line 1038
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    if-eqz v0, :cond_c

    .line 1039
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    invoke-virtual {v0, v3}, Lcom/sothree/slidinguppanel/ViewDragHelper;->setDragState(I)V

    .line 1044
    :cond_c
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 962
    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->abort()V

    .line 963
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1260
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1263
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1264
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1267
    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v1, :cond_0

    .line 1268
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    sub-int/2addr v1, v2

    .line 1269
    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_0

    .line 1271
    :cond_0
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1272
    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    add-int/2addr v2, v3

    .line 1274
    :goto_0
    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1275
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1276
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    const/4 v0, 0x2

    .line 1189
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    move-result v0

    .line 1191
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v1, :cond_3

    if-eq v1, p2, :cond_3

    .line 1194
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 1195
    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez v1, :cond_1

    .line 1196
    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v1, :cond_0

    .line 1197
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 1199
    :cond_0
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1202
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mClipPanel:Z

    if-eqz v1, :cond_2

    .line 1203
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1206
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 1208
    iget p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    if-eqz p3, :cond_4

    iget p4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_4

    const/high16 v1, -0x1000000

    and-int/2addr v1, p3

    ushr-int/lit8 v1, v1, 0x18

    int-to-float v1, v1

    mul-float v1, v1, p4

    float-to-int p4, v1

    shl-int/lit8 p4, p4, 0x18

    const v1, 0xffffff

    and-int/2addr p3, v1

    or-int/2addr p3, p4

    .line 1212
    iget-object p4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1213
    iget-object p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 1216
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 1219
    :cond_4
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p2
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1314
    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    invoke-direct {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1331
    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1319
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAnchorPoint()F
    .locals 1

    .line 609
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    return v0
.end method

.method public getCoveredFadeColor()I
    .locals 1

    .line 389
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    return v0
.end method

.method public getCurrentParallaxOffset()I
    .locals 3

    .line 462
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mParallaxOffset:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 463
    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v1, :cond_0

    neg-int v0, v0

    :cond_0
    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .line 482
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    return v0
.end method

.method public getPanelHeight()I
    .locals 1

    .line 454
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    return v0
.end method

.method public getPanelState()Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;
    .locals 1

    .line 1091
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    return-object v0
.end method

.method public getShadowHeight()I
    .locals 1

    .line 435
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    return v0
.end method

.method public isClipPanel()Z
    .locals 1

    .line 641
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mClipPanel:Z

    return v0
.end method

.method public isOverlayed()Z
    .locals 1

    .line 625
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    return v0
.end method

.method public isTouchEnabled()Z
    .locals 2

    .line 402
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsTouchEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 714
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 715
    iput-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 720
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    .line 721
    iput-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 355
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 356
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragViewResId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 357
    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    .line 359
    :cond_0
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mScrollableViewResId:I

    if-eq v0, v1, :cond_1

    .line 360
    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setScrollableView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 886
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsScrollableViewHandlingTouch:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isTouchEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 891
    :cond_0
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 892
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 893
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 894
    iget v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionX:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 895
    iget v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionY:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 896
    iget-object v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    invoke-virtual {v6}, Lcom/sothree/slidinguppanel/ViewDragHelper;->getTouchSlop()I

    move-result v6

    const/4 v7, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v7, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_1
    int-to-float v0, v6

    cmpl-float v0, v5, v0

    if-lez v0, :cond_5

    cmpl-float v0, v4, v5

    if-lez v0, :cond_5

    .line 914
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    invoke-virtual {p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->cancel()V

    .line 915
    iput-boolean v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    return v1

    .line 926
    :cond_2
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 927
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    invoke-virtual {v0, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    return v7

    :cond_3
    int-to-float v0, v6

    cmpg-float v2, v5, v0

    if-gtz v2, :cond_5

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_5

    .line 931
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionX:F

    float-to-int v2, v2

    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionY:F

    float-to-int v3, v3

    .line 933
    invoke-direct {p0, v0, v2, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFadeOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_5

    .line 934
    invoke-virtual {p0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->playSoundEffect(I)V

    .line 935
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFadeOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return v7

    .line 900
    :cond_4
    iput-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    .line 901
    iput v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionX:F

    .line 902
    iput v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mInitialMotionY:F

    .line 903
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-direct {p0, v0, v2, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 904
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    invoke-virtual {p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->cancel()V

    .line 905
    iput-boolean v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    return v1

    .line 940
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    invoke-virtual {v0, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 887
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    invoke-virtual {p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->abort()V

    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 815
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result p1

    .line 816
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result p2

    .line 818
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result p3

    .line 820
    iget-boolean p4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz p4, :cond_4

    .line 821
    sget-object p4, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$2;->$SwitchMap$com$sothree$slidinguppanel$SlidingUpPanelLayout$PanelState:[I

    iget-object p5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {p5}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->ordinal()I

    move-result p5

    aget p4, p4, p5

    const/4 p5, 0x1

    if-eq p4, p5, :cond_3

    const/4 p5, 0x2

    if-eq p4, p5, :cond_2

    const/4 p5, 0x3

    const/4 v0, 0x0

    if-eq p4, p5, :cond_0

    .line 833
    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_1

    .line 829
    :cond_0
    invoke-direct {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result p4

    iget-boolean p5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz p5, :cond_1

    iget p5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    goto :goto_0

    :cond_1
    iget p5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    neg-int p5, p5

    :goto_0
    add-int/2addr p4, p5

    .line 830
    invoke-direct {p0, p4}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->computeSlideOffset(I)F

    move-result p4

    iput p4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_1

    .line 826
    :cond_2
    iget p4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    iput p4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_1

    :cond_3
    const/high16 p4, 0x3f800000    # 1.0f

    .line 823
    iput p4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    :cond_4
    :goto_1
    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_2
    if-ge p5, p3, :cond_9

    .line 839
    invoke-virtual {p0, p5}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 840
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    .line 843
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    if-eqz p5, :cond_8

    iget-boolean v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v2, :cond_5

    goto :goto_4

    .line 847
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 850
    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-ne v0, v3, :cond_6

    .line 851
    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    invoke-direct {p0, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v3

    goto :goto_3

    :cond_6
    move v3, p2

    .line 854
    :goto_3
    iget-boolean v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-nez v4, :cond_7

    .line 855
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    if-ne v0, v4, :cond_7

    iget-boolean v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez v4, :cond_7

    .line 856
    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideOffset:F

    invoke-direct {p0, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result v3

    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    :cond_7
    add-int/2addr v2, v3

    .line 860
    iget v1, v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, p1

    .line 861
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    .line 863
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/view/View;->layout(IIII)V

    :cond_8
    :goto_4
    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    .line 866
    :cond_9
    iget-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz p1, :cond_a

    .line 867
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    .line 869
    :cond_a
    invoke-direct {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->applyParallaxForCurrentSlideOffset()V

    .line 871
    iput-boolean p4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 726
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 727
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 728
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 729
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 732
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eq v1, v3, :cond_3

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 734
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Height must have an exact value or MATCH_PARENT"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 737
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const/4 v1, 0x0

    .line 743
    invoke-virtual {p0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    const/4 v4, 0x1

    .line 744
    invoke-virtual {p0, v4}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    .line 745
    iget-object v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    if-nez v5, :cond_4

    .line 746
    invoke-virtual {p0, v4}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    .line 750
    :cond_4
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_5

    .line 751
    sget-object v4, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    iput-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 754
    :cond_5
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v4

    sub-int v4, p2, v4

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 755
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    :goto_2
    if-ge v1, v0, :cond_10

    .line 759
    invoke-virtual {p0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 760
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    .line 763
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_6

    if-nez v1, :cond_6

    goto/16 :goto_9

    .line 769
    :cond_6
    iget-object v8, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMainView:Landroid/view/View;

    if-ne v6, v8, :cond_8

    .line 770
    iget-boolean v8, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    sget-object v9, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-eq v8, v9, :cond_7

    .line 771
    iget v8, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    sub-int v8, v4, v8

    goto :goto_3

    :cond_7
    move v8, v4

    .line 774
    :goto_3
    iget v9, v7, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->leftMargin:I

    iget v10, v7, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->rightMargin:I

    add-int/2addr v9, v10

    sub-int v9, v5, v9

    goto :goto_5

    .line 775
    :cond_8
    iget-object v8, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-ne v6, v8, :cond_9

    .line 778
    iget v8, v7, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->topMargin:I

    sub-int v8, v4, v8

    goto :goto_4

    :cond_9
    move v8, v4

    :goto_4
    move v9, v5

    .line 782
    :goto_5
    iget v10, v7, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->width:I

    const/4 v11, -0x1

    const/4 v12, -0x2

    if-ne v10, v12, :cond_a

    .line 783
    invoke-static {v9, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    goto :goto_6

    .line 784
    :cond_a
    iget v10, v7, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->width:I

    if-ne v10, v11, :cond_b

    .line 785
    invoke-static {v9, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    goto :goto_6

    .line 787
    :cond_b
    iget v9, v7, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->width:I

    invoke-static {v9, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 791
    :goto_6
    iget v10, v7, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    if-ne v10, v12, :cond_c

    .line 792
    invoke-static {v8, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_8

    .line 795
    :cond_c
    iget v10, v7, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->weight:F

    const/4 v12, 0x0

    cmpl-float v10, v10, v12

    if-lez v10, :cond_d

    iget v10, v7, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->weight:F

    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v10, v10, v12

    if-gez v10, :cond_d

    int-to-float v8, v8

    .line 796
    iget v7, v7, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->weight:F

    mul-float v8, v8, v7

    float-to-int v8, v8

    goto :goto_7

    .line 797
    :cond_d
    iget v10, v7, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    if-eq v10, v11, :cond_e

    .line 798
    iget v8, v7, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->height:I

    .line 800
    :cond_e
    :goto_7
    invoke-static {v8, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 803
    :goto_8
    invoke-virtual {v6, v9, v7}, Landroid/view/View;->measure(II)V

    .line 805
    iget-object v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-ne v6, v7, :cond_f

    .line 806
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideRange:I

    :cond_f
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 810
    :cond_10
    invoke-virtual {p0, p1, p2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setMeasuredDimension(II)V

    return-void

    .line 740
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Sliding up panel layout must have exactly 2 children!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1344
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 1345
    check-cast p1, Landroid/os/Bundle;

    .line 1346
    const-string v0, "sliding_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-nez v0, :cond_0

    .line 1347
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->DEFAULT_SLIDE_STATE:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    :cond_0
    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    .line 1348
    const-string v0, "superState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 1350
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1336
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1337
    const-string v1, "superState"

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1338
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    sget-object v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->DRAGGING:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mLastNotDraggingSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    :goto_0
    const-string v2, "sliding_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 876
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p2, p4, :cond_0

    const/4 p1, 0x1

    .line 879
    iput-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 945
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isTouchEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 949
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    invoke-virtual {v0, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1

    .line 946
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public removePanelSlideListener(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;)V
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListeners:Ljava/util/List;

    monitor-enter v0

    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelSlideListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 513
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setAllChildrenVisible()V
    .locals 6

    .line 699
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 700
    invoke-virtual {p0, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 701
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 702
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAnchorPoint(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 597
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    const/4 p1, 0x1

    .line 598
    iput-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 599
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setClipPanel(Z)V
    .locals 0

    .line 634
    iput-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mClipPanel:Z

    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0

    .line 381
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 382
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    return-void
.end method

.method public setDragView(I)V
    .locals 0

    .line 566
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragViewResId:I

    .line 567
    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    return-void
.end method

.method public setDragView(Landroid/view/View;)V
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 534
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    :cond_0
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 538
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 539
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 540
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 541
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragView:Landroid/view/View;

    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$1;

    invoke-direct {v0, p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$1;-><init>(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public setFadeOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFadeOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setGravity(I)V
    .locals 2

    const/16 v0, 0x30

    const/16 v1, 0x50

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "gravity must be set to either top or bottom"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 368
    :goto_1
    iput-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    .line 369
    iget-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez p1, :cond_3

    .line 370
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    :cond_3
    return-void
.end method

.method public setMinFlingVelocity(I)V
    .locals 0

    .line 491
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mMinFlingVelocity:I

    return-void
.end method

.method public setOverlayed(Z)V
    .locals 0

    .line 618
    iput-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mOverlayContent:Z

    return-void
.end method

.method public setPanelHeight(I)V
    .locals 1

    .line 411
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPanelHeight()I

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    .line 416
    iget-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez p1, :cond_1

    .line 417
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    .line 420
    :cond_1
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPanelState()Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    move-result-object p1

    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-ne p1, v0, :cond_2

    .line 421
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->smoothToBottom()V

    .line 422
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setPanelState(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;)V
    .locals 4

    .line 1102
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->getViewDragState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1103
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->TAG:Ljava/lang/String;

    const-string v2, "View is settling. Aborting animation."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/ViewDragHelper;->abort()V

    :cond_0
    if-eqz p1, :cond_b

    .line 1107
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->DRAGGING:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-eq p1, v0, :cond_b

    .line 1110
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_a

    :cond_1
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-eq p1, v0, :cond_a

    sget-object v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->DRAGGING:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 1115
    :cond_2
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v0, :cond_3

    .line 1116
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelStateInternal(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;)V

    return-void

    .line 1118
    :cond_3
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideState:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    sget-object v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    .line 1119
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1120
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    .line 1122
    :cond_4
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$2;->$SwitchMap$com$sothree$slidinguppanel$SlidingUpPanelLayout$PanelState:[I

    invoke-virtual {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    if-eq p1, v1, :cond_8

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    goto :goto_1

    .line 1127
    :cond_5
    invoke-virtual {p0, v1, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    return-void

    .line 1133
    :cond_6
    invoke-direct {p0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result p1

    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsSlidingUp:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mPanelHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr p1, v0

    .line 1134
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->computeSlideOffset(I)F

    move-result p1

    invoke-virtual {p0, p1, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    return-void

    .line 1124
    :cond_8
    iget p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mAnchorPoint:F

    invoke-virtual {p0, p1, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    return-void

    :cond_9
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1130
    invoke-virtual {p0, p1, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    :cond_a
    :goto_1
    return-void

    .line 1108
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Panel state cannot be null or DRAGGING."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParallaxOffset(I)V
    .locals 0

    .line 472
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mParallaxOffset:I

    .line 473
    iget-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez p1, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setScrollableView(Landroid/view/View;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mScrollableView:Landroid/view/View;

    return-void
.end method

.method public setScrollableViewHelper(Lcom/sothree/slidinguppanel/ScrollableViewHelper;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mScrollableViewHelper:Lcom/sothree/slidinguppanel/ScrollableViewHelper;

    return-void
.end method

.method public setShadowHeight(I)V
    .locals 0

    .line 444
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mShadowHeight:I

    .line 445
    iget-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez p1, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    .line 398
    iput-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mIsTouchEnabled:Z

    return-void
.end method

.method smoothSlideTo(FI)Z
    .locals 3

    .line 1231
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->isEnabled()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-nez p2, :cond_0

    goto :goto_0

    .line 1236
    :cond_0
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->computePanelTopPosition(F)I

    move-result p1

    .line 1238
    iget-object p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mDragHelper:Lcom/sothree/slidinguppanel/ViewDragHelper;

    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2, v1, v2, p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1239
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setAllChildrenVisible()V

    .line 1240
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method protected smoothToBottom()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 428
    invoke-virtual {p0, v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->smoothSlideTo(FI)Z

    return-void
.end method

.method updateObscuredViewVisibility()V
    .locals 11

    .line 664
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 667
    :cond_0
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v0

    .line 668
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 669
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v2

    .line 670
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 675
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 676
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 677
    iget-object v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    .line 678
    iget-object v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    .line 679
    iget-object v8, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 683
    :goto_0
    invoke-virtual {p0, v5}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 684
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 685
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 686
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 687
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lt v0, v4, :cond_2

    if-lt v2, v7, :cond_2

    if-gt v1, v6, :cond_2

    if-gt v3, v8, :cond_2

    const/4 v5, 0x4

    .line 695
    :cond_2
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
