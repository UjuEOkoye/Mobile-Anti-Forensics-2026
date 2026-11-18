.class Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;
.super Ljava/lang/Object;
.source "ShredderData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/shred/ShredderData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClearProgress"
.end annotation


# instance fields
.field private currentObject:Ljava/lang/String;

.field private currentType:Ljava/lang/String;

.field private isError:Z

.field private isNewObject:Z

.field private max:I

.field private object:Ljava/lang/Object;

.field private type:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;


# direct methods
.method static bridge synthetic -$$Nest$mgetCurrentObject(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->getCurrentObject()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetCurrentType(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->getCurrentType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misNewObject(Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->isNewObject()Z

    move-result p0

    return p0
.end method

.method private constructor <init>(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 921
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->isError:Z

    .line 935
    iput-boolean p1, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->isNewObject:Z

    .line 936
    iput-object p3, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->currentType:Ljava/lang/String;

    .line 937
    iput-object p4, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->currentObject:Ljava/lang/String;

    .line 938
    iput p2, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->max:I

    return-void
.end method

.method synthetic constructor <init>(ZILjava/lang/String;Ljava/lang/String;Lcom/cbinnovations/androideraser/shredder/shred/ShredderData-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(ZLcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Ljava/lang/Object;)V
    .locals 1

    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 922
    iput-boolean v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->isNewObject:Z

    .line 929
    iput-boolean p1, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->isError:Z

    .line 930
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->type:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    .line 931
    iput-object p3, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->object:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(ZLcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Ljava/lang/Object;Lcom/cbinnovations/androideraser/shredder/shred/ShredderData-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;-><init>(ZLcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Ljava/lang/Object;)V

    return-void
.end method

.method private getCurrentObject()Ljava/lang/String;
    .locals 1

    .line 962
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->currentObject:Ljava/lang/String;

    return-object v0
.end method

.method private getCurrentType()Ljava/lang/String;
    .locals 1

    .line 958
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->currentType:Ljava/lang/String;

    return-object v0
.end method

.method private isNewObject()Z
    .locals 1

    .line 946
    iget-boolean v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->isNewObject:Z

    return v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .line 966
    iget v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->max:I

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;
    .locals 1

    .line 954
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->type:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    .line 942
    iget-boolean v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/ShredderData$ClearProgress;->isError:Z

    return v0
.end method
