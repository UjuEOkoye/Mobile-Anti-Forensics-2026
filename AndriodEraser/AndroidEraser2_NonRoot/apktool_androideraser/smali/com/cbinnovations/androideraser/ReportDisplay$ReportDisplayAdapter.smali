.class Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ReportDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/ReportDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReportDisplayAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$SectionViewHolder;,
        Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$SpacerViewHolder;,
        Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$RowViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
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

.field private padding:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/cbinnovations/androideraser/shredder/report/ReportRow;",
            ">;)V"
        }
    .end annotation

    .line 319
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 320
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 321
    iput-object p2, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;->mReportRow:Ljava/util/ArrayList;

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 322
    invoke-static {p1, v0, v1}, Lcom/cbinnovations/androideraser/utils/Utility;->dpToInt(Landroid/content/Context;D)I

    move-result p1

    iput p1, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;->padding:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/cbinnovations/androideraser/ReportDisplay-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;->mReportRow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 363
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 364
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;->mReportRow:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->getType()Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;->toInt()I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 340
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;->mReportRow:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;

    .line 341
    sget-object v1, Lcom/cbinnovations/androideraser/ReportDisplay$3;->$SwitchMap$com$cbinnovations$androideraser$shredder$report$ReportRow$Type:[I

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->getType()Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    check-cast p1, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$RowViewHolder;

    .line 348
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$RowViewHolder;->-$$Nest$fgettitle(Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$RowViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$RowViewHolder;->-$$Nest$fgetcontent(Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$RowViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->getInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p2, v0, :cond_1

    .line 351
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$RowViewHolder;->-$$Nest$fgettitle(Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$RowViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget v0, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;->padding:I

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 352
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$RowViewHolder;->-$$Nest$fgetcontent(Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$RowViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget p2, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;->padding:I

    invoke-virtual {p1, v1, v1, v1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    :goto_0
    return-void

    .line 343
    :cond_2
    check-cast p1, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$SectionViewHolder;

    .line 344
    invoke-static {p1}, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$SectionViewHolder;->-$$Nest$fgettitle(Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$SectionViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/report/ReportRow;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 328
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b008c

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 329
    new-instance p2, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$SectionViewHolder;

    invoke-direct {p2, p0, p1, v0}, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$SectionViewHolder;-><init>(Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;Landroid/view/View;Lcom/cbinnovations/androideraser/ReportDisplay-IA;)V

    return-object p2

    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 331
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b008d

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 332
    new-instance p2, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$SpacerViewHolder;

    invoke-direct {p2, p0, p1, v0}, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$SpacerViewHolder;-><init>(Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;Landroid/view/View;Lcom/cbinnovations/androideraser/ReportDisplay-IA;)V

    return-object p2

    .line 334
    :cond_1
    iget-object p2, p0, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b008b

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 335
    new-instance p2, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$RowViewHolder;

    invoke-direct {p2, p0, p1, v0}, Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter$RowViewHolder;-><init>(Lcom/cbinnovations/androideraser/ReportDisplay$ReportDisplayAdapter;Landroid/view/View;Lcom/cbinnovations/androideraser/ReportDisplay-IA;)V

    return-object p2
.end method
