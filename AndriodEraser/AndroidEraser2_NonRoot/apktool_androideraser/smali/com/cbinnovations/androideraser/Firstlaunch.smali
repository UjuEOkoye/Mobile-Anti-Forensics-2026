.class public Lcom/cbinnovations/androideraser/Firstlaunch;
.super Landroid/app/Activity;
.source "Firstlaunch.java"


# direct methods
.method static bridge synthetic -$$Nest$manimation(Lcom/cbinnovations/androideraser/Firstlaunch;Landroid/view/View;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cbinnovations/androideraser/Firstlaunch;->animation(Landroid/view/View;ZZ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private animation(Landroid/view/View;ZZ)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 34
    new-instance v0, Lcom/cbinnovations/androideraser/Firstlaunch$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cbinnovations/androideraser/Firstlaunch$1;-><init>(Lcom/cbinnovations/androideraser/Firstlaunch;Landroid/view/View;ZZ)V

    const-wide/16 p2, 0x64

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    new-instance p1, Lcom/cbinnovations/androideraser/utils/TinyDB;

    invoke-direct {p1, p0}, Lcom/cbinnovations/androideraser/utils/TinyDB;-><init>(Landroid/content/Context;)V

    const-string v0, "Firstlaunch"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 21
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/cbinnovations/androideraser/screen/DataScreen;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/Firstlaunch;->startActivity(Landroid/content/Intent;)V

    .line 22
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/Firstlaunch;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0b0091

    .line 24
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/Firstlaunch;->setContentView(I)V

    .line 25
    new-instance p1, Lcom/cbinnovations/androideraser/utils/TinyDB;

    invoke-direct {p1, p0}, Lcom/cbinnovations/androideraser/utils/TinyDB;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putBoolean(Ljava/lang/String;Z)V

    const p1, 0x7f08012f

    .line 26
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/Firstlaunch;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v2, v1}, Lcom/cbinnovations/androideraser/Firstlaunch;->animation(Landroid/view/View;ZZ)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 70
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/Firstlaunch;->finish()V

    return-void
.end method
