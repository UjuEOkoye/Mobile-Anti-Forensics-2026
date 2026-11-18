.class public Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Struct;
.super Ljava/lang/Object;
.source "Contacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Struct"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final lookup:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final number:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Struct;->id:Ljava/lang/String;

    .line 143
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Struct;->name:Ljava/lang/String;

    .line 144
    iput-object p3, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Struct;->number:Ljava/lang/String;

    .line 145
    iput-object p4, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Struct;->lookup:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Struct;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLookup()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Struct;->lookup:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Struct;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Struct;->number:Ljava/lang/String;

    return-object v0
.end method
