.class public Lcom/cbinnovations/androideraser/MethodsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MethodsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;,
        Lcom/cbinnovations/androideraser/MethodsAdapter$ChildHolder;,
        Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;,
        Lcom/cbinnovations/androideraser/MethodsAdapter$OnDataAdapterListener;
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
.field private final context:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private onDataAdapterListener:Lcom/cbinnovations/androideraser/MethodsAdapter$OnDataAdapterListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListItems(Lcom/cbinnovations/androideraser/MethodsAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter;->mListItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonDataAdapterListener(Lcom/cbinnovations/androideraser/MethodsAdapter;)Lcom/cbinnovations/androideraser/MethodsAdapter$OnDataAdapterListener;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter;->onDataAdapterListener:Lcom/cbinnovations/androideraser/MethodsAdapter$OnDataAdapterListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhasDataAdapterListener(Lcom/cbinnovations/androideraser/MethodsAdapter;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cbinnovations/androideraser/MethodsAdapter;->hasDataAdapterListener()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtoggleGroup(Lcom/cbinnovations/androideraser/MethodsAdapter;Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cbinnovations/androideraser/MethodsAdapter;->toggleGroup(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;Landroid/widget/ImageView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/cbinnovations/androideraser/MethodsAdapter;->context:Landroid/content/Context;

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/cbinnovations/androideraser/MethodsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 32
    iput-object p2, p0, Lcom/cbinnovations/androideraser/MethodsAdapter;->mListItems:Ljava/util/ArrayList;

    return-void
.end method

.method private collapseGroup(I)V
    .locals 2

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter;->mListItems:Ljava/util/ArrayList;

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 120
    invoke-virtual {p0, p1, v1}, Lcom/cbinnovations/androideraser/MethodsAdapter;->notifyItemRangeRemoved(II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 122
    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    return-void
.end method

.method private expandGroup(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;I)V
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter;->mListItems:Ljava/util/ArrayList;

    const/4 v1, 0x1

    add-int/2addr p2, v1

    new-instance v2, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->-$$Nest$fgetmEraseMethod(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    move-result-object v3

    sget-object v4, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Child:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->-$$Nest$fgetimage(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)I

    move-result p1

    invoke-direct {v2, v3, v4, p1}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;-><init>(Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;I)V

    invoke-virtual {v0, p2, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 113
    invoke-virtual {p0, p2, v1}, Lcom/cbinnovations/androideraser/MethodsAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method private hasDataAdapterListener()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter;->onDataAdapterListener:Lcom/cbinnovations/androideraser/MethodsAdapter$OnDataAdapterListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onBindChildViewHolder(Lcom/cbinnovations/androideraser/MethodsAdapter$ChildHolder;Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)V
    .locals 6

    .line 90
    invoke-static {p1}, Lcom/cbinnovations/androideraser/MethodsAdapter$ChildHolder;->-$$Nest$fgetchildTitle(Lcom/cbinnovations/androideraser/MethodsAdapter$ChildHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/cbinnovations/androideraser/MethodsAdapter;->context:Landroid/content/Context;

    const v3, 0x7f110166

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->-$$Nest$fgetmEraseMethod(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    move-result-object v3

    iget v3, v3, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mCycles:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-static {p1}, Lcom/cbinnovations/androideraser/MethodsAdapter$ChildHolder;->-$$Nest$fgetchildText(Lcom/cbinnovations/androideraser/MethodsAdapter$ChildHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p2}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->-$$Nest$fgetmEraseMethod(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    move-result-object p2

    iget p2, p2, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mDescription:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private onBindGroupViewHolder(Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)V
    .locals 4

    .line 63
    invoke-static {p1}, Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;->-$$Nest$fgetgroupIcon(Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p2}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->-$$Nest$fgetimage(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    invoke-static {p1}, Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;->-$$Nest$fgetgroupTitle(Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->-$$Nest$fgetmEraseMethod(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    move-result-object v1

    iget-object v1, v1, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;->mValue:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;

    iget-object v2, p0, Lcom/cbinnovations/androideraser/MethodsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-static {p1}, Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;->-$$Nest$fgetgroupRadioButton(Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 66
    invoke-static {p1}, Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;->-$$Nest$fgetgroupDivider(Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/cbinnovations/androideraser/MethodsAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/MethodsAdapter;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq p2, v2, :cond_0

    invoke-static {p2}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->-$$Nest$misExpanded(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x4

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    invoke-static {p1}, Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;->-$$Nest$fgetgroupRadioButton(Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/MethodsAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/cbinnovations/androideraser/MethodsAdapter$1;-><init>(Lcom/cbinnovations/androideraser/MethodsAdapter;Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p1, Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/cbinnovations/androideraser/MethodsAdapter$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/cbinnovations/androideraser/MethodsAdapter$2;-><init>(Lcom/cbinnovations/androideraser/MethodsAdapter;Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private toggleGroup(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;Landroid/widget/ImageView;)V
    .locals 2

    .line 95
    invoke-static {p1}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->-$$Nest$misExpanded(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-static {p1}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->-$$Nest$mgetStatusHistory(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->isExpanded:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 100
    :cond_0
    iget-object p2, p0, Lcom/cbinnovations/androideraser/MethodsAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/MethodsAdapter;->collapseGroup(I)V

    return-void

    .line 102
    :cond_1
    invoke-static {p1}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->-$$Nest$mgetStatusHistory(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->isExpanded:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    .line 104
    invoke-virtual {p2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 106
    :cond_2
    iget-object p2, p0, Lcom/cbinnovations/androideraser/MethodsAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/cbinnovations/androideraser/MethodsAdapter;->expandGroup(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;I)V

    return-void
.end method


# virtual methods
.method public collapseAll()V
    .locals 4

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    iget-object v1, p0, Lcom/cbinnovations/androideraser/MethodsAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;

    .line 149
    instance-of v3, v2, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    if-eqz v3, :cond_0

    .line 150
    check-cast v2, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    .line 151
    invoke-static {v2}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->-$$Nest$misExpanded(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    const/4 v2, 0x0

    .line 158
    invoke-direct {p0, v1, v2}, Lcom/cbinnovations/androideraser/MethodsAdapter;->toggleGroup(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;->getViewType()Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->getId()I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 52
    sget-object v0, Lcom/cbinnovations/androideraser/MethodsAdapter$3;->$SwitchMap$com$cbinnovations$androideraser$shredder$search$adapter$ListItem$ViewType:[I

    iget-object v1, p0, Lcom/cbinnovations/androideraser/MethodsAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;

    invoke-virtual {v1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;->getViewType()Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 57
    :cond_0
    check-cast p1, Lcom/cbinnovations/androideraser/MethodsAdapter$ChildHolder;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    invoke-direct {p0, p1, p2}, Lcom/cbinnovations/androideraser/MethodsAdapter;->onBindChildViewHolder(Lcom/cbinnovations/androideraser/MethodsAdapter$ChildHolder;Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)V

    return-void

    .line 54
    :cond_1
    check-cast p1, Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;

    invoke-direct {p0, p1, p2}, Lcom/cbinnovations/androideraser/MethodsAdapter;->onBindGroupViewHolder(Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    .line 37
    sget-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Group:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    .line 38
    new-instance p2, Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b0028

    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1, v1}, Lcom/cbinnovations/androideraser/MethodsAdapter$GroupHolder;-><init>(Lcom/cbinnovations/androideraser/MethodsAdapter;Landroid/view/View;Lcom/cbinnovations/androideraser/MethodsAdapter-IA;)V

    return-object p2

    .line 39
    :cond_0
    sget-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Child:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->getId()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 40
    new-instance p2, Lcom/cbinnovations/androideraser/MethodsAdapter$ChildHolder;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b0027

    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1, v1}, Lcom/cbinnovations/androideraser/MethodsAdapter$ChildHolder;-><init>(Lcom/cbinnovations/androideraser/MethodsAdapter;Landroid/view/View;Lcom/cbinnovations/androideraser/MethodsAdapter-IA;)V

    return-object p2

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ViewType is not valid."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnDataAdapterListener(Lcom/cbinnovations/androideraser/MethodsAdapter$OnDataAdapterListener;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/cbinnovations/androideraser/MethodsAdapter;->onDataAdapterListener:Lcom/cbinnovations/androideraser/MethodsAdapter$OnDataAdapterListener;

    return-void
.end method

.method public updateItem(Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/MethodsAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method
