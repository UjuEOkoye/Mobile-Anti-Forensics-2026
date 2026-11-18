.class Lcom/cbinnovations/androideraser/utils/Utility$1;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/utils/Utility;->collapse(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$initialHeight:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/cbinnovations/androideraser/utils/Utility$1;->val$v:Landroid/view/View;

    iput p2, p0, Lcom/cbinnovations/androideraser/utils/Utility$1;->val$initialHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 111
    new-instance v0, Lcom/cbinnovations/androideraser/utils/Utility$1$1;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/utils/Utility$1;->val$v:Landroid/view/View;

    iget v2, p0, Lcom/cbinnovations/androideraser/utils/Utility$1;->val$initialHeight:I

    invoke-direct {v0, p0, v1, v2}, Lcom/cbinnovations/androideraser/utils/Utility$1$1;-><init>(Lcom/cbinnovations/androideraser/utils/Utility$1;Landroid/view/View;I)V

    .line 126
    iget v1, p0, Lcom/cbinnovations/androideraser/utils/Utility$1;->val$initialHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/cbinnovations/androideraser/utils/Utility$1;->val$v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 127
    iget-object v1, p0, Lcom/cbinnovations/androideraser/utils/Utility$1;->val$v:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
