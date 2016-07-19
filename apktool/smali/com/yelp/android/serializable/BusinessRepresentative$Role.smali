.class public final enum Lcom/yelp/android/serializable/BusinessRepresentative$Role;
.super Ljava/lang/Enum;
.source "BusinessRepresentative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/BusinessRepresentative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Role"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/BusinessRepresentative$Role;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/BusinessRepresentative$Role;

.field public static final enum BUSINESS_OWNER:Lcom/yelp/android/serializable/BusinessRepresentative$Role;

.field public static final enum MANAGER:Lcom/yelp/android/serializable/BusinessRepresentative$Role;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/yelp/android/serializable/BusinessRepresentative$Role;

    const-string/jumbo v1, "BUSINESS_OWNER"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/BusinessRepresentative$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/BusinessRepresentative$Role;->BUSINESS_OWNER:Lcom/yelp/android/serializable/BusinessRepresentative$Role;

    .line 15
    new-instance v0, Lcom/yelp/android/serializable/BusinessRepresentative$Role;

    const-string/jumbo v1, "MANAGER"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/serializable/BusinessRepresentative$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/BusinessRepresentative$Role;->MANAGER:Lcom/yelp/android/serializable/BusinessRepresentative$Role;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/serializable/BusinessRepresentative$Role;

    sget-object v1, Lcom/yelp/android/serializable/BusinessRepresentative$Role;->BUSINESS_OWNER:Lcom/yelp/android/serializable/BusinessRepresentative$Role;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/serializable/BusinessRepresentative$Role;->MANAGER:Lcom/yelp/android/serializable/BusinessRepresentative$Role;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yelp/android/serializable/BusinessRepresentative$Role;->$VALUES:[Lcom/yelp/android/serializable/BusinessRepresentative$Role;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/BusinessRepresentative$Role;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/yelp/android/serializable/BusinessRepresentative$Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessRepresentative$Role;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/BusinessRepresentative$Role;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/yelp/android/serializable/BusinessRepresentative$Role;->$VALUES:[Lcom/yelp/android/serializable/BusinessRepresentative$Role;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/BusinessRepresentative$Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/BusinessRepresentative$Role;

    return-object v0
.end method
