.class Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$2;
.super Ljava/lang/Object;
.source "ReportHistory.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->onBindViewHolder(Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

.field final synthetic val$holder:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;)V
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

    .line 254
    iput-object p2, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$2;->val$holder:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$2;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 256
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$2;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetmActionMode(Lcom/cbinnovations/androideraser/ReportHistory;)Landroid/view/ActionMode;

    move-result-object p1

    if-nez p1, :cond_0

    .line 257
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$2;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetremove(Lcom/cbinnovations/androideraser/ReportHistory;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$2;->val$holder:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$2;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$2;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$2;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    iget-object v1, v1, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetmActionModeCallback(Lcom/cbinnovations/androideraser/ReportHistory;)Landroid/view/ActionMode$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/ReportHistory;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fputmActionMode(Lcom/cbinnovations/androideraser/ReportHistory;Landroid/view/ActionMode;)V

    .line 259
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$2;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$2;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetmActionMode(Lcom/cbinnovations/androideraser/ReportHistory;)Landroid/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 261
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$2;->val$holder:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
