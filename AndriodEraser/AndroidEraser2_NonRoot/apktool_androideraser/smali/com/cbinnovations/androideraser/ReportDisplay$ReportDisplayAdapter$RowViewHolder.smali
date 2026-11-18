.class Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$RowViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ReportDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RowViewHolder"
.end annotation


# instance fields
.field private content:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;

.field private title:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontent(Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$RowViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$RowViewHolder;->content:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitle(Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$RowViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$RowViewHolder;->title:Landroid/widget/TextView;

    return-object p0
.end method

.method private constructor <init>(Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 371
    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$RowViewHolder;->this$0:Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;

    .line 372
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f080219

    .line 373
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$RowViewHolder;->title:Landroid/widget/TextView;

    const p1, 0x7f080095

    .line 374
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$RowViewHolder;->content:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;Landroid/view/View;Lcom/cbinnovations/androideraser/ReportDisplay-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$RowViewHolder;-><init>(Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;Landroid/view/View;)V

    return-void
.end method
