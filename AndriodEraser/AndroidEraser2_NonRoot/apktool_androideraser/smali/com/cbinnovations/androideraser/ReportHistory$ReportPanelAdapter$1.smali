.class Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$1;
.super Ljava/lang/Object;
.source "ReportHistory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 234
    iput-object p2, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$1;->val$holder:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$1;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 236
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$1;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetmActionMode(Lcom/cbinnovations/androideraser/ReportHistory;)Landroid/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 237
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$1;->val$holder:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 238
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$1;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetremove(Lcom/cbinnovations/androideraser/ReportHistory;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$1;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetremove(Lcom/cbinnovations/androideraser/ReportHistory;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 240
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$1;->val$holder:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->-$$Nest$fgetcheckBox(Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$1;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetremove(Lcom/cbinnovations/androideraser/ReportHistory;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$1;->val$holder:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->-$$Nest$fgetcheckBox(Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 245
    :goto_0
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$1;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetmActionMode(Lcom/cbinnovations/androideraser/ReportHistory;)Landroid/view/ActionMode;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$1;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    iget-object v1, v1, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetremove(Lcom/cbinnovations/androideraser/ReportHistory;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$1;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    iget-object v1, v1, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-virtual {v1}, Lcom/cbinnovations/androideraser/ReportHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$1;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    iget-object p1, p1, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$1;->val$holder:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cbinnovations/androideraser/ReportHistory;->onItemClick(Ljava/lang/Integer;)V

    return-void
.end method
