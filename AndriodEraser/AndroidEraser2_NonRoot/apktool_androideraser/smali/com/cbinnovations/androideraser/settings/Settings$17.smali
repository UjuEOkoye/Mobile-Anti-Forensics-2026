.class Lcom/cbinnovations/androideraser/settings/Settings$17;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/settings/Settings;->dialogFeedback()V
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

    .line 368
    iput-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$17;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 370
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$17;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    iget-object v0, p0, Lcom/cbinnovations/androideraser/settings/Settings$17;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    const v1, 0x7f11015f

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/settings/Settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cbinnovations/androideraser/settings/Settings$17;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    iget-object v2, v1, Lcom/cbinnovations/androideraser/settings/Settings;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    const-string v3, "cb_is_premium"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f11012b

    goto :goto_0

    :cond_0
    const v2, 0x7f110027

    :goto_0
    invoke-virtual {v1, v2}, Lcom/cbinnovations/androideraser/settings/Settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-static {p2, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cbinnovations/androideraser/settings/Settings;->-$$Nest$mfeedback(Lcom/cbinnovations/androideraser/settings/Settings;Ljava/lang/String;)V

    return-void
.end method
