.class Lcom/cbinnovations/androideraser/settings/Settings$7$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/settings/Settings$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cbinnovations/androideraser/settings/Settings$7;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/settings/Settings$7;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 252
    iput-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$7$1;->this$1:Lcom/cbinnovations/androideraser/settings/Settings$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 254
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$7$1;->this$1:Lcom/cbinnovations/androideraser/settings/Settings$7;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/settings/Settings$7;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/settings/Settings;->-$$Nest$mupdate(Lcom/cbinnovations/androideraser/settings/Settings;)V

    return-void
.end method
