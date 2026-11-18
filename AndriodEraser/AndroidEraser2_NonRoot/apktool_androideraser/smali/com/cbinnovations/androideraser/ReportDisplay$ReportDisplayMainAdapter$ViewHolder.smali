.class public Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ReportDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic this$0:Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;


# direct methods
.method private constructor <init>(Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 301
    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter$ViewHolder;->this$0:Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;

    .line 302
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f080134

    .line 303
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter$ViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 304
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 305
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter$ViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 306
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter$ViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;->-$$Nest$fgetmReportRow(Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/cbinnovations/androideraser/ReportDisplay-IA;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;Landroid/view/View;Lcom/cbinnovations/androideraser/ReportDisplay-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter$ViewHolder;-><init>(Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;Landroid/view/View;)V

    return-void
.end method
