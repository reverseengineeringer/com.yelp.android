.class final enum Lcom/yelp/android/serializable/BusinessUser$Role;
.super Ljava/lang/Enum;
.source "BusinessUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/BusinessUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Role"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/BusinessUser$Role;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/BusinessUser$Role;

.field public static final enum CUSTOMER_SERVICE:Lcom/yelp/android/serializable/BusinessUser$Role;

.field public static final enum EMPLOYEE:Lcom/yelp/android/serializable/BusinessUser$Role;

.field public static final enum MANAGER:Lcom/yelp/android/serializable/BusinessUser$Role;

.field public static final enum OWNER:Lcom/yelp/android/serializable/BusinessUser$Role;


# instance fields
.field mKey:Ljava/lang/String;

.field mResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 15
    new-instance v0, Lcom/yelp/android/serializable/BusinessUser$Role;

    const-string/jumbo v1, "OWNER"

    const-string/jumbo v2, "owner"

    const v3, 0x7f070183

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/yelp/android/serializable/BusinessUser$Role;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/BusinessUser$Role;->OWNER:Lcom/yelp/android/serializable/BusinessUser$Role;

    .line 16
    new-instance v0, Lcom/yelp/android/serializable/BusinessUser$Role;

    const-string/jumbo v1, "MANAGER"

    const-string/jumbo v2, "manager"

    const v3, 0x7f070180

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/yelp/android/serializable/BusinessUser$Role;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/BusinessUser$Role;->MANAGER:Lcom/yelp/android/serializable/BusinessUser$Role;

    .line 17
    new-instance v0, Lcom/yelp/android/serializable/BusinessUser$Role;

    const-string/jumbo v1, "EMPLOYEE"

    const-string/jumbo v2, "employee"

    const v3, 0x7f070176

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/yelp/android/serializable/BusinessUser$Role;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/BusinessUser$Role;->EMPLOYEE:Lcom/yelp/android/serializable/BusinessUser$Role;

    .line 18
    new-instance v0, Lcom/yelp/android/serializable/BusinessUser$Role;

    const-string/jumbo v1, "CUSTOMER_SERVICE"

    const-string/jumbo v2, "customer service"

    const v3, 0x7f070175

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/yelp/android/serializable/BusinessUser$Role;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/BusinessUser$Role;->CUSTOMER_SERVICE:Lcom/yelp/android/serializable/BusinessUser$Role;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/serializable/BusinessUser$Role;

    sget-object v1, Lcom/yelp/android/serializable/BusinessUser$Role;->OWNER:Lcom/yelp/android/serializable/BusinessUser$Role;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/serializable/BusinessUser$Role;->MANAGER:Lcom/yelp/android/serializable/BusinessUser$Role;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/serializable/BusinessUser$Role;->EMPLOYEE:Lcom/yelp/android/serializable/BusinessUser$Role;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/serializable/BusinessUser$Role;->CUSTOMER_SERVICE:Lcom/yelp/android/serializable/BusinessUser$Role;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yelp/android/serializable/BusinessUser$Role;->$VALUES:[Lcom/yelp/android/serializable/BusinessUser$Role;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/yelp/android/serializable/BusinessUser$Role;->mKey:Ljava/lang/String;

    .line 25
    iput p4, p0, Lcom/yelp/android/serializable/BusinessUser$Role;->mResourceId:I

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/BusinessUser$Role;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/yelp/android/serializable/BusinessUser$Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessUser$Role;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/BusinessUser$Role;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/yelp/android/serializable/BusinessUser$Role;->$VALUES:[Lcom/yelp/android/serializable/BusinessUser$Role;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/BusinessUser$Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/BusinessUser$Role;

    return-object v0
.end method
