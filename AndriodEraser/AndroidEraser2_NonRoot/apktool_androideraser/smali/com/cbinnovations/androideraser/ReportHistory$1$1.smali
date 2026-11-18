.class Lcom/cbinnovations/androideraser/ReportHistory$1$1;
.super Ljava/lang/Object;
.source "ReportHistory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/ReportHistory$1;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cbinnovations/androideraser/ReportHistory$1;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/ReportHistory$1;Landroid/view/ActionMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    iput-object p2, p0, Lcom/cbinnovations/androideraser/ReportHistory$1$1;->val$mode:Landroid/view/ActionMode;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$1$1;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 67
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$1$1;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$1;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetremove(Lcom/cbinnovations/androideraser/ReportHistory;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 68
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$1$1;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$1;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetremove(Lcom/cbinnovations/androideraser/ReportHistory;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 69
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ReportHistory$1$1;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$1;

    iget-object p2, p2, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p2}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetmReports(Lcom/cbinnovations/androideraser/ReportHistory;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory$1$1;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$1;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetremove(Lcom/cbinnovations/androideraser/ReportHistory;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$1$1;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$1;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgettinyDB(Lcom/cbinnovations/androideraser/ReportHistory;)Lcom/cbinnovations/androideraser/utils/TinyDB;

    move-result-object p1

    iget-object p2, p0, Lcom/cbinnovations/androideraser/ReportHistory$1$1;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$1;

    iget-object p2, p2, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p2}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetmReports(Lcom/cbinnovations/androideraser/ReportHistory;)Ljava/util/ArrayList;

    move-result-object p2

    const-string v0, "savekey_reports"

    invoke-virtual {p1, v0, p2}, Lcom/cbinnovations/androideraser/utils/TinyDB;->putListObject(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 72
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$1$1;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$1;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    new-instance p2, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory$1$1;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$1;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/ReportHistory$1$1;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$1;

    iget-object v1, v1, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    iget-object v2, p0, Lcom/cbinnovations/androideraser/ReportHistory$1$1;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$1;

    iget-object v2, v2, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {v2}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetmReports(Lcom/cbinnovations/androideraser/ReportHistory;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;-><init>(Lcom/cbinnovations/androideraser/ReportHistory;Landroid/content/Context;Ljava/util/ArrayList;Lcom/cbinnovations/androideraser/ReportHistory-IA;)V

    invoke-static {p1, p2}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fputadapter(Lcom/cbinnovations/androideraser/ReportHistory;Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;)V

    .line 73
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$1$1;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$1;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetmRecyclerView(Lcom/cbinnovations/androideraser/ReportHistory;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/cbinnovations/androideraser/ReportHistory$1$1;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$1;

    iget-object p2, p2, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p2}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetadapter(Lcom/cbinnovations/androideraser/ReportHistory;)Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 74
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$1$1;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return-void
.end method
