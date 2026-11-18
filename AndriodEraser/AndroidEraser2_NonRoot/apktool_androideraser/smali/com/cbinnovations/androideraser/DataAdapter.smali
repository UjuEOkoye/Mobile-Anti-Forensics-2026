.class public Lcom/cbinnovations/androideraser/DataAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;,
        Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;,
        Lcom/cbinnovations/androideraser/DataAdapter$OnDataAdapterListener;
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

.field private onDataAdapterListener:Lcom/cbinnovations/androideraser/DataAdapter$OnDataAdapterListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListItems(Lcom/cbinnovations/androideraser/DataAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/DataAdapter;->mListItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonDataAdapterListener(Lcom/cbinnovations/androideraser/DataAdapter;)Lcom/cbinnovations/androideraser/DataAdapter$OnDataAdapterListener;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/DataAdapter;->onDataAdapterListener:Lcom/cbinnovations/androideraser/DataAdapter$OnDataAdapterListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhasDataAdapterListener(Lcom/cbinnovations/androideraser/DataAdapter;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cbinnovations/androideraser/DataAdapter;->hasDataAdapterListener()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtoggleGroup(Lcom/cbinnovations/androideraser/DataAdapter;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/DataAdapter;->toggleGroup(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;)V

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

    .line 33
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter;->context:Landroid/content/Context;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    iput-object p2, p0, Lcom/cbinnovations/androideraser/DataAdapter;->mListItems:Ljava/util/ArrayList;

    return-void
.end method

.method private collapseGroup(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;I)V
    .locals 2

    .line 181
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->getChildItemCount()I

    move-result p1

    add-int v0, p2, p1

    :goto_0
    if-le v0, p2, :cond_0

    .line 183
    iget-object v1, p0, Lcom/cbinnovations/androideraser/DataAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 185
    invoke-virtual {p0, p2, p1}, Lcom/cbinnovations/androideraser/DataAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method private expandGroup(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;I)V
    .locals 5

    .line 167
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->getChildItemCount()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    move v2, v1

    :goto_0
    add-int v3, p2, v0

    if-gt v2, v3, :cond_0

    .line 169
    iget-object v3, p0, Lcom/cbinnovations/androideraser/DataAdapter;->mListItems:Ljava/util/ArrayList;

    sub-int v4, v2, p2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->getChildItem(I)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/cbinnovations/androideraser/DataAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method private getChildText(Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)Ljava/lang/String;
    .locals 2

    .line 213
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getReason()Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    move-result-object v0

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->success:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    if-eq v0, v1, :cond_0

    .line 214
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getReason()Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    move-result-object p1

    iget-object v0, p0, Lcom/cbinnovations/androideraser/DataAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->toString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 216
    :cond_0
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->hasSelectedChildItems()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getSelectedChildItemCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getChildItemCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 218
    const-string p1, "All items selected"

    return-object p1

    .line 219
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getSelectedChildItemCount()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " item(s) selected"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 221
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getChildItemCount()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " item(s) found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getGroupPosition(Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;)I
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/cbinnovations/androideraser/DataAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 259
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/DataAdapter;->getItemViewType(I)I

    move-result v0

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Group:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    invoke-virtual {v1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private hasDataAdapterListener()Z
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/cbinnovations/androideraser/DataAdapter;->onDataAdapterListener:Lcom/cbinnovations/androideraser/DataAdapter$OnDataAdapterListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onBindChildViewHolder(Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;)V
    .locals 6

    .line 122
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->-$$Nest$fgetchildIcon(Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getChildHeader()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;->getHeaderImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->-$$Nest$fgetchildTitle(Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getChildHeader()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;->getHeaderTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->-$$Nest$fgetchildInfo(Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getChildHeader()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;->getHeaderText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->-$$Nest$fgetchildText(Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/cbinnovations/androideraser/DataAdapter;->getChildText(Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getReason()Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    move-result-object v0

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->success:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 128
    :goto_0
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->-$$Nest$fgetchildIcon(Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const v5, 0x3eb33333    # 0.35f

    :goto_1
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 129
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->-$$Nest$fgetchildTitle(Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v0, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const v5, 0x3e4ccccd    # 0.2f

    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 130
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->-$$Nest$fgetchildInfo(Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v0, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 131
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->-$$Nest$fgetchildText(Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const v4, 0x3f333333    # 0.7f

    :goto_4
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 132
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->-$$Nest$fgetchildCheckBox(Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->hasSelectedChildItems()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 133
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->-$$Nest$fgetchildCheckBox(Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    const/16 v4, 0x8

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    const/16 v0, 0x8

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 134
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->-$$Nest$fgetchildDivider(Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;)Landroid/view/View;

    move-result-object v0

    .line 135
    invoke-virtual {p3}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->getChildItemCount()I

    move-result v1

    sub-int/2addr v1, v2

    .line 134
    invoke-virtual {p3, v1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->getChildItem(I)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    move-result-object v1

    if-ne v1, p2, :cond_6

    const/16 v3, 0x8

    :cond_6
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 137
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->-$$Nest$fgetchildCheckBox(Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/DataAdapter$4;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/cbinnovations/androideraser/DataAdapter$4;-><init>(Lcom/cbinnovations/androideraser/DataAdapter;Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object p1, p1, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/cbinnovations/androideraser/DataAdapter$5;

    invoke-direct {v0, p0, p3, p2}, Lcom/cbinnovations/androideraser/DataAdapter$5;-><init>(Lcom/cbinnovations/androideraser/DataAdapter;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onBindGroupViewHolder(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;)V
    .locals 6

    .line 76
    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->isActivated()Z

    move-result v0

    .line 77
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->-$$Nest$fgetgroupIcon(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->getGroupHeader()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;->getHeaderImage()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->-$$Nest$fgetgroupIcon(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->hasItems()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x3ee66666    # 0.45f

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 79
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->-$$Nest$fgetgroupTitle(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->getGroupHeader()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;->getHeaderTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->-$$Nest$fgetgroupTitle(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->hasItems()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const v2, 0x3e4ccccd    # 0.2f

    goto :goto_3

    :cond_3
    :goto_2
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 81
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->-$$Nest$fgetgroupText(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->getGroupHeader()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;->getHeaderText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->-$$Nest$fgetgroupText(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->hasItems()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const v3, 0x3f333333    # 0.7f

    :cond_5
    :goto_4
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 84
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->-$$Nest$fgetgroupScanIndicator(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->shouldScan()Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    const/16 v2, 0x8

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->-$$Nest$fgetgroupIndicator(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->hasItems()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    goto :goto_6

    :cond_7
    const/16 v2, 0x8

    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->-$$Nest$fgetgroupCheckBox(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->shouldCheck()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 87
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->-$$Nest$fgetgroupCheckBox(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->shouldScan()Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz v0, :cond_8

    const/4 v2, 0x0

    goto :goto_7

    :cond_8
    const/16 v2, 0x8

    :goto_7
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 88
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->-$$Nest$fgetgroupProgress(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 89
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->-$$Nest$fgetgroupEnd(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cbinnovations/androideraser/DataAdapter;->context:Landroid/content/Context;

    const-wide v4, 0x404b800000000000L    # 55.0

    invoke-static {v0, v4, v5}, Lcom/cbinnovations/androideraser/utils/Utility;->dpToInt(Landroid/content/Context;D)I

    move-result v0

    goto :goto_8

    :cond_9
    const/16 v0, 0x14

    :goto_8
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 90
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->-$$Nest$fgetgroupDivider(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/cbinnovations/androideraser/DataAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/DataAdapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p2, v1, :cond_a

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    const/4 v3, 0x4

    :cond_b
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 92
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->-$$Nest$fgetgroupCheckBox(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/cbinnovations/androideraser/DataAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/cbinnovations/androideraser/DataAdapter$1;-><init>(Lcom/cbinnovations/androideraser/DataAdapter;Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p1, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/cbinnovations/androideraser/DataAdapter$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/cbinnovations/androideraser/DataAdapter$2;-><init>(Lcom/cbinnovations/androideraser/DataAdapter;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->-$$Nest$fgetgroupScanIndicator(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/ImageView;

    move-result-object p2

    new-instance v0, Lcom/cbinnovations/androideraser/DataAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/cbinnovations/androideraser/DataAdapter$3;-><init>(Lcom/cbinnovations/androideraser/DataAdapter;Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private toggleGroup(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;)V
    .locals 2

    .line 155
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->getStatusHistory()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->isExpanded:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->getGroupHolder()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->-$$Nest$fgetgroupIndicator(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 158
    iget-object v0, p0, Lcom/cbinnovations/androideraser/DataAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/cbinnovations/androideraser/DataAdapter;->collapseGroup(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;I)V

    return-void

    .line 160
    :cond_0
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->getStatusHistory()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->isExpanded:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->getGroupHolder()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->-$$Nest$fgetgroupIndicator(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 162
    iget-object v0, p0, Lcom/cbinnovations/androideraser/DataAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/cbinnovations/androideraser/DataAdapter;->expandGroup(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/cbinnovations/androideraser/DataAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/cbinnovations/androideraser/DataAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;->getViewType()Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->getId()I

    move-result p1

    return p1
.end method

.method public getListItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/cbinnovations/androideraser/DataAdapter;->mListItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedData()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    iget-object v2, p0, Lcom/cbinnovations/androideraser/DataAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;

    .line 193
    invoke-virtual {v3}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    check-cast v3, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    .line 195
    invoke-virtual {v3}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->getChildItems()[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {v3}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->getChildItems()[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 197
    invoke-virtual {v6}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getReason()Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    move-result-object v7

    sget-object v8, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->success:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    if-ne v7, v8, :cond_3

    invoke-virtual {v6}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->hasSelectedChildItems()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 198
    invoke-virtual {v6}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getType()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 199
    invoke-virtual {v6}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getType()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

    invoke-virtual {v6}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;->expand(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 201
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v7

    new-instance v8, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

    invoke-virtual {v6}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getType()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    move-result-object v9

    invoke-virtual {v6}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;-><init>(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 202
    invoke-virtual {v6}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getType()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 57
    sget-object v0, Lcom/cbinnovations/androideraser/DataAdapter$6;->$SwitchMap$com$cbinnovations$androideraser$shredder$search$adapter$ListItem$ViewType:[I

    iget-object v1, p0, Lcom/cbinnovations/androideraser/DataAdapter;->mListItems:Ljava/util/ArrayList;

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

    .line 63
    :cond_0
    check-cast p1, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/DataAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/DataAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;

    invoke-direct {p0, p2}, Lcom/cbinnovations/androideraser/DataAdapter;->getGroupPosition(Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    invoke-direct {p0, p1, v0, p2}, Lcom/cbinnovations/androideraser/DataAdapter;->onBindChildViewHolder(Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;)V

    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/cbinnovations/androideraser/DataAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    invoke-virtual {v0, p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->setGroupHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 60
    check-cast p1, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/DataAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;

    invoke-direct {p0, p1, p2}, Lcom/cbinnovations/androideraser/DataAdapter;->onBindGroupViewHolder(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    .line 47
    sget-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Group:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    .line 48
    new-instance p2, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/DataAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b002c

    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1, v1}, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;-><init>(Lcom/cbinnovations/androideraser/DataAdapter;Landroid/view/View;Lcom/cbinnovations/androideraser/DataAdapter-IA;)V

    return-object p2

    .line 49
    :cond_0
    sget-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Child:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->getId()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 50
    new-instance p2, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/DataAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0b002b

    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1, v1}, Lcom/cbinnovations/androideraser/DataAdapter$ChildHolder;-><init>(Lcom/cbinnovations/androideraser/DataAdapter;Landroid/view/View;Lcom/cbinnovations/androideraser/DataAdapter-IA;)V

    return-object p2

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ViewType is not valid."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnDataAdapterListener(Lcom/cbinnovations/androideraser/DataAdapter$OnDataAdapterListener;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/cbinnovations/androideraser/DataAdapter;->onDataAdapterListener:Lcom/cbinnovations/androideraser/DataAdapter$OnDataAdapterListener;

    return-void
.end method

.method public startGroupSearchAnimation(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;)V
    .locals 2

    .line 234
    :try_start_0
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;->getGroupHolder()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;

    .line 235
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->-$$Nest$fgetgroupProgress(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 236
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->-$$Nest$fgetgroupCheckBox(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 237
    invoke-static {p1}, Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;->-$$Nest$fgetgroupScanIndicator(Lcom/cbinnovations/androideraser/DataAdapter$GroupHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public updateItem(Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/cbinnovations/androideraser/DataAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/cbinnovations/androideraser/DataAdapter;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/DataAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method
