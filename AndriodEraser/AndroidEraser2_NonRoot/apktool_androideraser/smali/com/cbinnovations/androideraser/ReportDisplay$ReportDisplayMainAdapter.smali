.class Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ReportDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/ReportDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReportDisplayMainAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mReportRow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cbinnovations/androideraser/shredder/report/ReportRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReportRow(Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;->mReportRow:Ljava/util/ArrayList;

    return-object p0
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/cbinnovations/androideraser/shredder/report/ReportRow;",
            ">;)V"
        }
    .end annotation

    .line 278
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 279
    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;->context:Landroid/content/Context;

    .line 280
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 281
    iput-object p2, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;->mReportRow:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/cbinnovations/androideraser/ReportDisplay-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
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

    .line 272
    check-cast p1, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;->onBindViewHolder(Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter$ViewHolder;I)V
    .locals 0

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

    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter$ViewHolder;
    .locals 2

    .line 286
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b008a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 287
    new-instance p2, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter$ViewHolder;-><init>(Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayMainAdapter;Landroid/view/View;Lcom/cbinnovations/androideraser/ReportDisplay-IA;)V

    return-object p2
.end method
