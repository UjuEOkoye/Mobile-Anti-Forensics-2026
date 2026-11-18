.class Lcom/cbinnovations/androideraser/settings/Settings$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/settings/Settings;->initOnCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/settings/Settings;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/settings/Settings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$1;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 126
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$1;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/settings/Settings;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    const-string v0, "cb_is_premium"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x1

    new-array v0, v0, [Z

    aput-boolean p1, v0, v1

    .line 127
    aget-boolean p1, v0, v1

    if-eqz p1, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$1;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    const v2, 0x7f11006d

    invoke-virtual {p1, v2}, Lcom/cbinnovations/androideraser/settings/Settings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 131
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$1;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    new-instance v1, Lcom/cbinnovations/androideraser/settings/Settings$1$1;

    invoke-direct {v1, p0, v0}, Lcom/cbinnovations/androideraser/settings/Settings$1$1;-><init>(Lcom/cbinnovations/androideraser/settings/Settings$1;[Z)V

    invoke-static {p1, v1}, Lcom/cbinnovations/androideraser/SubCheckActivity;->checkProfessional(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    return-void
.end method
