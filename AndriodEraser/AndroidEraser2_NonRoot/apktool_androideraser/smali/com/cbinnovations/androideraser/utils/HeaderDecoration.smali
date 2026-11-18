.class public Lcom/cbinnovations/androideraser/utils/HeaderDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "HeaderDecoration.java"


# static fields
.field private static final mColumns:I = 0x1


# instance fields
.field private final mHorizontal:Z

.field private final mParallax:F

.field private final mShadowPaint:Landroid/graphics/Paint;

.field private final mShadowSize:F

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;ZFF)V
    .locals 11

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mView:Landroid/view/View;

    .line 24
    iput-boolean p2, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mHorizontal:Z

    .line 25
    iput p3, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mParallax:F

    .line 26
    iput p4, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mShadowSize:F

    const/4 p1, 0x0

    cmpl-float p1, p4, p1

    if-lez p1, :cond_1

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mShadowPaint:Landroid/graphics/Paint;

    const/4 p3, 0x3

    const/16 v0, 0x23

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 31
    new-instance v2, Landroid/graphics/LinearGradient;

    .line 32
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {p3, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    filled-new-array {p2, v0, v1}, [I

    move-result-object v7

    new-array v8, p3, [F

    fill-array-data v8, :array_0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p4

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_0

    :cond_0
    move v3, p4

    .line 35
    new-instance p2, Landroid/graphics/LinearGradient;

    .line 36
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p4

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {p3, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    filled-new-array {p4, v0, v1}, [I

    move-result-object v8

    new-array v9, p3, [F

    fill-array-data v9, :array_1

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, v3

    move-object v3, p2

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object v2, v3

    .line 30
    :goto_0
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mShadowPaint:Landroid/graphics/Paint;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 82
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p4, 0x1

    if-ge p2, p4, :cond_3

    .line 83
    iget-boolean p2, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mHorizontal:Z

    const/high16 p4, -0x80000000

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 84
    iget-object p2, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    if-gtz p2, :cond_0

    .line 85
    iget-object p2, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mView:Landroid/view/View;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 86
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result p3

    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 85
    invoke-virtual {p2, v1, p3}, Landroid/view/View;->measure(II)V

    .line 88
    :cond_0
    iget-object p2, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 90
    :cond_1
    iget-object p2, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    if-gtz p2, :cond_2

    .line 91
    iget-object p2, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mView:Landroid/view/View;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 92
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result p3

    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 91
    invoke-virtual {p2, v1, p3}, Landroid/view/View;->measure(II)V

    .line 94
    :cond_2
    iget-object p2, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 97
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 12

    .line 46
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 48
    iget-object p3, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p3, v0, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 50
    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p3

    if-ge v3, p3, :cond_4

    .line 51
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 52
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_3

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 54
    iget-boolean v0, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mHorizontal:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getTop()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getBottom()I

    move-result v4

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 56
    iget-object v0, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 57
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    iget v2, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mParallax:F

    mul-float v0, v0, v2

    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 59
    iget-object v2, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 60
    iget v2, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mShadowSize:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    .line 61
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p3, v0

    iget v0, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mShadowSize:F

    sub-float/2addr p3, v0

    invoke-virtual {p1, p3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 62
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLeft()I

    move-result p3

    int-to-float v1, p3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getTop()I

    move-result p3

    int-to-float v2, p3

    iget v3, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mShadowSize:F

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getBottom()I

    move-result p2

    int-to-float v4, p2

    iget-object v5, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    move-object v0, p1

    goto :goto_1

    :cond_1
    move-object v0, p1

    .line 65
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLeft()I

    move-result p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getRight()I

    move-result v3

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 66
    iget-object p1, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 67
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, p1

    int-to-float p1, v2

    iget v2, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mParallax:F

    mul-float p1, p1, v2

    .line 68
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 69
    iget-object v2, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 70
    iget v2, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mShadowSize:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    .line 71
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p3, p1

    iget p1, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mShadowSize:F

    sub-float/2addr p3, p1

    invoke-virtual {v0, v1, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 72
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLeft()I

    move-result p1

    int-to-float v7, p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getTop()I

    move-result p1

    int-to-float v8, p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getRight()I

    move-result p1

    int-to-float v9, p1

    iget v10, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mShadowSize:F

    iget-object v11, p0, Lcom/cbinnovations/androideraser/utils/HeaderDecoration;->mShadowPaint:Landroid/graphics/Paint;

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 75
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_3
    move-object v0, p1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method
