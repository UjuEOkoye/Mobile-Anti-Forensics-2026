.class Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ReportHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/ReportHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportPanelAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mReports:[Ljava/lang/Object;

.field final synthetic this$0:Lcom/cbinnovations/androideraser/ReportHistory;


# direct methods
.method private constructor <init>(Lcom/cbinnovations/androideraser/ReportHistory;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 213
    iput-object p2, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->context:Landroid/content/Context;

    .line 214
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 215
    invoke-virtual {p3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->mReports:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbinnovations/androideraser/ReportHistory;Landroid/content/Context;Ljava/util/ArrayList;Lcom/cbinnovations/androideraser/ReportHistory-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;-><init>(Lcom/cbinnovations/androideraser/ReportHistory;Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->mReports:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 206
    check-cast p1, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->onBindViewHolder(Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;I)V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->mReports:[Ljava/lang/Object;

    aget-object v0, v0, p2

    check-cast v0, Lcom/cbinnovations/androideraser/shredder/report/Report;

    .line 226
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->-$$Nest$fgettitle(Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/report/Report;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->-$$Nest$fgetsubtitle(Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/report/Report;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->-$$Nest$fgetinfo(Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/report/Report;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f110160

    goto :goto_0

    :cond_0
    const v0, 0x7f110041

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->-$$Nest$fgetlayout_checkbox(Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetmActionMode(Lcom/cbinnovations/androideraser/ReportHistory;)Landroid/view/ActionMode;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 230
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->-$$Nest$fgetcheckBox(Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetremove(Lcom/cbinnovations/androideraser/ReportHistory;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 231
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->-$$Nest$fgetcheckBox(Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object p2

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetmActionMode(Lcom/cbinnovations/androideraser/ReportHistory;)Landroid/view/ActionMode;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 232
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->-$$Nest$fgetcheckBox(Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object p2

    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->this$0:Lcom/cbinnovations/androideraser/ReportHistory;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/ReportHistory;->-$$Nest$fgetmActionMode(Lcom/cbinnovations/androideraser/ReportHistory;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 234
    new-instance p2, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$1;

    invoke-direct {p2, p0, p1}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$1;-><init>(Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;)V

    .line 252
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->-$$Nest$fgetcheckBox(Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p1, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object p2, p1, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$2;-><init>(Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;
    .locals 2

    .line 220
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b002a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 221
    new-instance p2, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;-><init>(Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;Landroid/view/View;Lcom/cbinnovations/androideraser/ReportHistory-IA;)V

    return-object p2
.end method
