.class Lcom/cbinnovations/androideraser/utils/Utility$1$1;
.super Landroid/view/animation/Animation;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/utils/Utility$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/utils/Utility$1;

.field final synthetic val$initialHeight:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/utils/Utility$1;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 111
    iput-object p2, p0, Lcom/cbinnovations/androideraser/utils/Utility$1$1;->val$v:Landroid/view/View;

    iput p3, p0, Lcom/cbinnovations/androideraser/utils/Utility$1$1;->val$initialHeight:I

    iput-object p1, p0, Lcom/cbinnovations/androideraser/utils/Utility$1$1;->this$0:Lcom/cbinnovations/androideraser/utils/Utility$1;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p1, p2

    if-nez p2, :cond_0

    .line 114
    iget-object p1, p0, Lcom/cbinnovations/androideraser/utils/Utility$1$1;->val$v:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 116
    :cond_0
    iget-object p2, p0, Lcom/cbinnovations/androideraser/utils/Utility$1$1;->val$v:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v0, p0, Lcom/cbinnovations/androideraser/utils/Utility$1$1;->val$initialHeight:I

    int-to-float v1, v0

    mul-float v1, v1, p1

    float-to-int p1, v1

    sub-int/2addr v0, p1

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 117
    iget-object p1, p0, Lcom/cbinnovations/androideraser/utils/Utility$1$1;->val$v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
