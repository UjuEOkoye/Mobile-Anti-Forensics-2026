.class public Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Photos$Struct;
.super Ljava/lang/Object;
.source "Photos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Photos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Struct"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Photos$Struct;->id:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Photos$Struct;->name:Ljava/lang/String;

    .line 139
    iput-object p3, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Photos$Struct;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Photos$Struct;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Photos$Struct;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Photos$Struct;->path:Ljava/lang/String;

    return-object v0
.end method
