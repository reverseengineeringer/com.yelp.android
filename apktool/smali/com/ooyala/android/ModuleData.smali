.class public Lcom/ooyala/android/ModuleData;
.super Ljava/lang/Object;
.source "ModuleData.java"


# instance fields
.field protected _metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _name:Ljava/lang/String;

.field protected _type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/ooyala/android/ModuleData;->_name:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/ooyala/android/ModuleData;->_type:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/ooyala/android/ModuleData;->_metadata:Ljava/util/Map;

    .line 14
    return-void
.end method


# virtual methods
.method public getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ooyala/android/ModuleData;->_metadata:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ooyala/android/ModuleData;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ooyala/android/ModuleData;->_type:Ljava/lang/String;

    return-object v0
.end method
