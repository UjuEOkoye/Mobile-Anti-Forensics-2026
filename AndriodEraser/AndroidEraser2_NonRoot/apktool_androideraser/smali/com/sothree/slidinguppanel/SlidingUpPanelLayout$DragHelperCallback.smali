.class Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;
.super Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;


# direct methods
.method private constructor <init>(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)V
    .locals 0

    .line 1353
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-direct {p0}, Lcom/sothree/slidinguppanel/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$1;)V
    .locals 0

    .line 1353
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;-><init>(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1

    .line 1436
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$1200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;F)I

    move-result p1

    .line 1437
    iget-object p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p3, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$1200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;F)I

    move-result p3

    .line 1438
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$1100(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1439
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    .line 1441
    :cond_0
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 0

    .line 1431
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$1300(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)I

    move-result p1

    return p1
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 0

    .line 1384
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setAllChildrenVisible()V

    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 1

    .line 1363
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$500(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Lcom/sothree/slidinguppanel/ViewDragHelper;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$500(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Lcom/sothree/slidinguppanel/ViewDragHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sothree/slidinguppanel/ViewDragHelper;->getViewDragState()I

    move-result p1

    if-nez p1, :cond_3

    .line 1364
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$400(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$700(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;I)F

    move-result v0

    invoke-static {p1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$602(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;F)F

    .line 1365
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$800(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)V

    .line 1367
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$600(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 1368
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    .line 1369
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->EXPANDED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-static {p1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$900(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;)V

    return-void

    .line 1370
    :cond_0
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$600(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    .line 1371
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-static {p1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$900(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;)V

    return-void

    .line 1372
    :cond_1
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$600(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 1373
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->HIDDEN:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-static {p1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$900(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;)V

    .line 1374
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$400(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1376
    :cond_2
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    .line 1377
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;->ANCHORED:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;

    invoke-static {p1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$900(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelState;)V

    :cond_3
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    .line 1389
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p1, p3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$1000(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;I)V

    .line 1390
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->invalidate()V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 3

    .line 1398
    iget-object p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$1100(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Z

    move-result p2

    if-eqz p2, :cond_0

    neg-float p3, p3

    :cond_0
    const/4 p2, 0x0

    cmpl-float v0, p3, p2

    if-lez v0, :cond_1

    .line 1400
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$600(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v1

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 1402
    iget-object p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result p3

    invoke-static {p2, p3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$1200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;F)I

    move-result p2

    goto/16 :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_2

    .line 1403
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$600(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v0

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 1405
    iget-object p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p2, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$1200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;F)I

    move-result p2

    goto/16 :goto_0

    :cond_2
    cmpg-float p3, p3, p2

    if-gez p3, :cond_3

    .line 1406
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$600(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v0

    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    .line 1408
    iget-object p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result p3

    invoke-static {p2, p3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$1200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;F)I

    move-result p2

    goto :goto_0

    :cond_3
    if-gez p3, :cond_4

    .line 1409
    iget-object p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$600(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result p3

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_4

    .line 1411
    iget-object p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p3, p2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$1200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;F)I

    move-result p2

    goto :goto_0

    .line 1412
    :cond_4
    iget-object p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$600(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result p3

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v0

    add-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    cmpl-float p3, p3, v0

    if-ltz p3, :cond_5

    .line 1414
    iget-object p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p2, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$1200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;F)I

    move-result p2

    goto :goto_0

    .line 1415
    :cond_5
    iget-object p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$600(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result p3

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result v0

    div-float/2addr v0, v2

    cmpl-float p3, p3, v0

    if-ltz p3, :cond_6

    .line 1417
    iget-object p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)F

    move-result p3

    invoke-static {p2, p3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$1200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;F)I

    move-result p2

    goto :goto_0

    .line 1420
    :cond_6
    iget-object p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p3, p2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$1200(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;F)I

    move-result p2

    .line 1423
    :goto_0
    iget-object p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$500(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Lcom/sothree/slidinguppanel/ViewDragHelper;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 1424
    iget-object p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$500(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Lcom/sothree/slidinguppanel/ViewDragHelper;

    move-result-object p3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p3, p1, p2}, Lcom/sothree/slidinguppanel/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 1426
    :cond_7
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->invalidate()V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0

    .line 1357
    iget-object p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$300(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-static {p2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->access$400(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
