.class Lcom/cbinnovations/androideraser/settings/Settings$12;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/settings/Settings;->initCommunity()V
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

    .line 295
    iput-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$12;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 297
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$12;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/cbinnovations/androideraser/settings/Settings$12;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    const v2, 0x7f11015f

    invoke-virtual {v1, v2}, Lcom/cbinnovations/androideraser/settings/Settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cbinnovations/androideraser/settings/Settings$12;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    iget-object v3, v2, Lcom/cbinnovations/androideraser/settings/Settings;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    const-string v4, "cb_is_premium"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f11012b

    goto :goto_0

    :cond_0
    const v3, 0x7f110027

    :goto_0
    invoke-virtual {v2, v3}, Lcom/cbinnovations/androideraser/settings/Settings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cbinnovations/androideraser/settings/Settings;->-$$Nest$mfeedback(Lcom/cbinnovations/androideraser/settings/Settings;Ljava/lang/String;)V

    return-void
.end method
