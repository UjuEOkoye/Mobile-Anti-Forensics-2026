.class Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "ClosableSlidingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cocosw/bottomsheet/ClosableSlidingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;


# direct methods
.method private constructor <init>(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;Lcom/cocosw/bottomsheet/ClosableSlidingLayout$1;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;-><init>(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 0

    .line 207
    iget-object p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {p1}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$300(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    .line 198
    iget-object p2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {p2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$400(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)I

    move-result p2

    sub-int/2addr p2, p3

    const/4 p4, 0x1

    if-ge p2, p4, :cond_0

    iget-object p2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {p2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$600(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)Lcom/cocosw/bottomsheet/ClosableSlidingLayout$SlideListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 199
    iget-object p2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {p2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$500(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 200
    iget-object p2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {p2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$600(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)Lcom/cocosw/bottomsheet/ClosableSlidingLayout$SlideListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$SlideListener;->onClosed()V

    .line 201
    iget-object p2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {p2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$500(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p2

    const/4 p4, 0x0

    invoke-virtual {p2, p1, p4, p3}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    :cond_0
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 2

    .line 184
    iget-object p2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {p2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$100(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)F

    move-result p2

    cmpl-float p2, p3, p2

    if-lez p2, :cond_0

    .line 185
    iget-object p2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {p2, p1, p3}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$200(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;Landroid/view/View;F)V

    return-void

    .line 187
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$300(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)I

    move-result v0

    iget-object v1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {v1}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$400(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    .line 188
    iget-object p2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {p2, p1, p3}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$200(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;Landroid/view/View;F)V

    return-void

    .line 190
    :cond_1
    iget-object p2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {p2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$500(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p2

    iget-object p3, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {p3}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$300(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 191
    iget-object p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
