.class Lcom/cbinnovations/androideraser/ReportHistory$1;
.super Ljava/lang/Object;
.source "ReportHistory.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/ReportHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cbinnovations/androideraser/ReportHistory;


# direct methods
.method constructor <init>(Lcom/cbinnovations/androideraser/ReportHistory;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6

    .line 59
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x7f080040

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_3

    const v0, 0x7f08004b

    if-eq p2, v0, :cond_0

    return v1

    .line 82
    :cond_0
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p2}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetremove(Lcom/cbinnovations/androideraser/ReportHistory;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetadapter(Lcom/cbinnovations/androideraser/ReportHistory;)Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->getItemCount()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 83
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p2}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetremove(Lcom/cbinnovations/androideraser/ReportHistory;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 85
    :cond_1
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p2}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetremove(Lcom/cbinnovations/androideraser/ReportHistory;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 86
    :goto_0
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p2}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetadapter(Lcom/cbinnovations/androideraser/ReportHistory;)Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->getItemCount()I

    move-result p2

    if-ge v1, p2, :cond_2

    .line 87
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p2}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetremove(Lcom/cbinnovations/androideraser/ReportHistory;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_2
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetremove(Lcom/cbinnovations/androideraser/ReportHistory;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/ReportHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetadapter(Lcom/cbinnovations/androideraser/ReportHistory;)Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->notifyDataSetChanged()V

    return v2

    .line 61
    :cond_3
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p2}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetremove(Lcom/cbinnovations/androideraser/ReportHistory;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 62
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-direct {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f110071

    .line 63
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    .line 64
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v3, p0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    const v4, 0x7f110070

    invoke-virtual {v3, v4}, Lcom/cbinnovations/androideraser/ReportHistory;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {v4}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetremove(Lcom/cbinnovations/androideraser/ReportHistory;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v1

    invoke-static {v0, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/cbinnovations/androideraser/ReportHistory$1$1;

    invoke-direct {v0, p0, p1}, Lcom/cbinnovations/androideraser/ReportHistory$1$1;-><init>(Lcom/cbinnovations/androideraser/ReportHistory$1;Landroid/view/ActionMode;)V

    const p1, 0x104000a

    .line 65
    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_4
    return v2
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .line 48
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    .line 49
    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetremove(Lcom/cbinnovations/androideraser/ReportHistory;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/ReportHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .line 100
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fputmActionMode(Lcom/cbinnovations/androideraser/ReportHistory;Landroid/view/ActionMode;)V

    .line 101
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetremove(Lcom/cbinnovations/androideraser/ReportHistory;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 102
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetadapter(Lcom/cbinnovations/androideraser/ReportHistory;)Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->notifyDataSetChanged()V

    .line 104
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetmReports(Lcom/cbinnovations/androideraser/ReportHistory;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const v0, 0x7f080042

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetmRecyclerView(Lcom/cbinnovations/androideraser/ReportHistory;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 106
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p1, v0}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$mhideOption(Lcom/cbinnovations/androideraser/ReportHistory;I)V

    return-void

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetmRecyclerView(Lcom/cbinnovations/androideraser/ReportHistory;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$1;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {p1, v0}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$mshowOption(Lcom/cbinnovations/androideraser/ReportHistory;I)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
