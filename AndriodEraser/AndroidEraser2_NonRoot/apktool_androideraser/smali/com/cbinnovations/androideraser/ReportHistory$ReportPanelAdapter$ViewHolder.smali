.class public Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ReportHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private final checkBox:Landroid/widget/CheckBox;

.field private final info:Landroid/widget/TextView;

.field private final layout_checkbox:Landroid/widget/RelativeLayout;

.field private final subtitle:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

.field private final title:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetcheckBox(Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinfo(Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->info:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlayout_checkbox(Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->layout_checkbox:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsubtitle(Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitle(Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object p0
.end method

.method private constructor <init>(Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;Landroid/view/View;)V
    .locals 0
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

    .line 280
    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->this$1:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    .line 281
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f08021b

    .line 282
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const p1, 0x7f0801f7

    .line 283
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    const p1, 0x7f080109

    .line 284
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->info:Landroid/widget/TextView;

    const p1, 0x7f080083

    .line 285
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const p1, 0x7f080113

    .line 286
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;->layout_checkbox:Landroid/widget/RelativeLayout;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;Landroid/view/View;Lcom/cbinnovations/androideraser/ReportHistory-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter$ViewHolder;-><init>(Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;Landroid/view/View;)V

    return-void
.end method
