.class public Lcom/cbinnovations/androideraser/MyApp;
.super Landroid/app/Application;
.source "MyApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 12
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const/4 v0, 0x0

    .line 13
    invoke-static {p0, v0}, Lcom/cbinnovations/androideraser/SubCheckActivity;->checkProfessional(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    return-void
.end method
