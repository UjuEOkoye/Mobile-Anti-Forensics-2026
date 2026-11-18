.class Lcom/cbinnovations/androideraser/Firstlaunch$1$1;
.super Ljava/lang/Object;
.source "Firstlaunch.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/Firstlaunch$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cbinnovations/androideraser/Firstlaunch$1;

.field final synthetic val$child:Z

.field final synthetic val$start:Z


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/Firstlaunch$1;ZZ)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    iput-boolean p2, p0, Lcom/cbinnovations/androideraser/Firstlaunch$1$1;->val$child:Z

    iput-boolean p3, p0, Lcom/cbinnovations/androideraser/Firstlaunch$1$1;->val$start:Z

    iput-object p1, p0, Lcom/cbinnovations/androideraser/Firstlaunch$1$1;->this$1:Lcom/cbinnovations/androideraser/Firstlaunch$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 41
    iget-boolean p1, p0, Lcom/cbinnovations/androideraser/Firstlaunch$1$1;->val$child:Z

    if-eqz p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/cbinnovations/androideraser/Firstlaunch$1$1;->this$1:Lcom/cbinnovations/androideraser/Firstlaunch$1;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/Firstlaunch$1;->this$0:Lcom/cbinnovations/androideraser/Firstlaunch;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/Firstlaunch$1$1;->this$1:Lcom/cbinnovations/androideraser/Firstlaunch$1;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/Firstlaunch$1;->this$0:Lcom/cbinnovations/androideraser/Firstlaunch;

    const v1, 0x7f08013d

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/Firstlaunch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lcom/cbinnovations/androideraser/Firstlaunch;->-$$Nest$manimation(Lcom/cbinnovations/androideraser/Firstlaunch;Landroid/view/View;ZZ)V

    .line 43
    iget-object p1, p0, Lcom/cbinnovations/androideraser/Firstlaunch$1$1;->this$1:Lcom/cbinnovations/androideraser/Firstlaunch$1;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/Firstlaunch$1;->this$0:Lcom/cbinnovations/androideraser/Firstlaunch;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/Firstlaunch$1$1;->this$1:Lcom/cbinnovations/androideraser/Firstlaunch$1;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/Firstlaunch$1;->this$0:Lcom/cbinnovations/androideraser/Firstlaunch;

    const v2, 0x7f080131

    invoke-virtual {v0, v2}, Lcom/cbinnovations/androideraser/Firstlaunch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/cbinnovations/androideraser/Firstlaunch;->-$$Nest$manimation(Lcom/cbinnovations/androideraser/Firstlaunch;Landroid/view/View;ZZ)V

    return-void

    .line 44
    :cond_0
    iget-boolean p1, p0, Lcom/cbinnovations/androideraser/Firstlaunch$1$1;->val$start:Z

    if-eqz p1, :cond_1

    .line 45
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/cbinnovations/androideraser/Firstlaunch$1$1$1;

    invoke-direct {v0, p0}, Lcom/cbinnovations/androideraser/Firstlaunch$1$1$1;-><init>(Lcom/cbinnovations/androideraser/Firstlaunch$1$1;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
