.class Lcom/cbinnovations/androideraser/ReportDisplay$2;
.super Ljava/lang/Object;
.source "ReportDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/ReportDisplay;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/ReportDisplay;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/ReportDisplay;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportDisplay$2;->this$0:Lcom/cbinnovations/androideraser/ReportDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportDisplay$2;->this$0:Lcom/cbinnovations/androideraser/ReportDisplay;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/ReportDisplay;->-$$Nest$fgetmRecyclerView(Lcom/cbinnovations/androideraser/ReportDisplay;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method
