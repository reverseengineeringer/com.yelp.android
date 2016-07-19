.class public final enum Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;
.super Ljava/lang/Enum;
.source "GenericSearchFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/GenericSearchFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

.field public static final enum Boolean:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

.field public static final enum OpenNow:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

.field public static final enum Platform:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

.field public static final enum Reservation:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    const-string/jumbo v1, "Boolean"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Boolean:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    .line 26
    new-instance v0, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    const-string/jumbo v1, "OpenNow"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->OpenNow:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    .line 27
    new-instance v0, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    const-string/jumbo v1, "Reservation"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Reservation:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    .line 28
    new-instance v0, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    const-string/jumbo v1, "Platform"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Platform:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    sget-object v1, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Boolean:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->OpenNow:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Reservation:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Platform:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->$VALUES:[Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getFilterType(Ljava/lang/String;)Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;
    .locals 5

    .prologue
    .line 31
    invoke-static {}, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->values()[Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 32
    invoke-virtual {v0}, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    :goto_1
    return-object v0

    .line 31
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->$VALUES:[Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    return-object v0
.end method
