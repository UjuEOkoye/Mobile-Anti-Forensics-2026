.class Lcom/cbinnovations/androideraser/settings/Settings$10;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/settings/Settings;->initExplorer()V
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

    .line 280
    iput-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$10;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 282
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$10;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/settings/Settings;->-$$Nest$mtoggleDirectExplorer(Lcom/cbinnovations/androideraser/settings/Settings;)V

    .line 283
    iget-object p1, p0, Lcom/cbinnovations/androideraser/settings/Settings$10;->this$0:Lcom/cbinnovations/androideraser/settings/Settings;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/settings/Settings;->-$$Nest$mupdate(Lcom/cbinnovations/androideraser/settings/Settings;)V

    return-void
.end method
