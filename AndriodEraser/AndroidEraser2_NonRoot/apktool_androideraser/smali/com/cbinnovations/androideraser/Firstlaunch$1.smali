.class Lcom/cbinnovations/androideraser/Firstlaunch$1;
.super Ljava/lang/Object;
.source "Firstlaunch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/Firstlaunch;->animation(Landroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/Firstlaunch;

.field final synthetic val$child:Z

.field final synthetic val$start:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/Firstlaunch;Landroid/view/View;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    iput-object p2, p0, Lcom/cbinnovations/androideraser/Firstlaunch$1;->val$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/cbinnovations/androideraser/Firstlaunch$1;->val$child:Z

    iput-boolean p4, p0, Lcom/cbinnovations/androideraser/Firstlaunch$1;->val$start:Z

    iput-object p1, p0, Lcom/cbinnovations/androideraser/Firstlaunch$1;->this$0:Lcom/cbinnovations/androideraser/Firstlaunch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/cbinnovations/androideraser/Firstlaunch$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/Firstlaunch$1$1;

    iget-boolean v2, p0, Lcom/cbinnovations/androideraser/Firstlaunch$1;->val$child:Z

    iget-boolean v3, p0, Lcom/cbinnovations/androideraser/Firstlaunch$1;->val$start:Z

    invoke-direct {v1, p0, v2, v3}, Lcom/cbinnovations/androideraser/Firstlaunch$1$1;-><init>(Lcom/cbinnovations/androideraser/Firstlaunch$1;ZZ)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
