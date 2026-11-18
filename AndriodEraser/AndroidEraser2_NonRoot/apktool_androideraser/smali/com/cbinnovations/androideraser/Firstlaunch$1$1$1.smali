.class Lcom/cbinnovations/androideraser/Firstlaunch$1$1$1;
.super Ljava/lang/Object;
.source "Firstlaunch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/Firstlaunch$1$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cbinnovations/androideraser/Firstlaunch$1$1;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/Firstlaunch$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/cbinnovations/androideraser/Firstlaunch$1$1$1;->this$2:Lcom/cbinnovations/androideraser/Firstlaunch$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/cbinnovations/androideraser/Firstlaunch$1$1$1;->this$2:Lcom/cbinnovations/androideraser/Firstlaunch$1$1;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/Firstlaunch$1$1;->this$1:Lcom/cbinnovations/androideraser/Firstlaunch$1;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/Firstlaunch$1;->this$0:Lcom/cbinnovations/androideraser/Firstlaunch;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cbinnovations/androideraser/Firstlaunch$1$1$1;->this$2:Lcom/cbinnovations/androideraser/Firstlaunch$1$1;

    iget-object v2, v2, Lcom/cbinnovations/androideraser/Firstlaunch$1$1;->this$1:Lcom/cbinnovations/androideraser/Firstlaunch$1;

    iget-object v2, v2, Lcom/cbinnovations/androideraser/Firstlaunch$1;->this$0:Lcom/cbinnovations/androideraser/Firstlaunch;

    const-class v3, Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/Firstlaunch;->startActivity(Landroid/content/Intent;)V

    .line 48
    iget-object v0, p0, Lcom/cbinnovations/androideraser/Firstlaunch$1$1$1;->this$2:Lcom/cbinnovations/androideraser/Firstlaunch$1$1;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/Firstlaunch$1$1;->this$1:Lcom/cbinnovations/androideraser/Firstlaunch$1;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/Firstlaunch$1;->this$0:Lcom/cbinnovations/androideraser/Firstlaunch;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/Firstlaunch;->finish()V

    return-void
.end method
