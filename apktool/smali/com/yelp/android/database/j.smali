.class public Lcom/yelp/android/database/j;
.super Lcom/yelp/android/database/k;
.source "DeprecatedAdapterNearbyFilters.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Lcom/yelp/android/database/m;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 22
    new-instance v0, Lcom/yelp/android/database/n;

    const-string/jumbo v1, "saved_nearby"

    invoke-direct {v0, v1}, Lcom/yelp/android/database/n;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/yelp/android/database/f;

    const-string/jumbo v2, "_id"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->INTEGER:Lcom/yelp/android/database/ColumnType;

    sget-object v4, Lcom/yelp/android/database/ColumnModifier;->PRIMARY_KEY_AUTOINCREMENT:Lcom/yelp/android/database/ColumnModifier;

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/database/f;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;Lcom/yelp/android/database/ColumnModifier;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/n;->a(Lcom/yelp/android/database/f;)Lcom/yelp/android/database/n;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/database/f;

    const-string/jumbo v2, "term"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->TEXT:Lcom/yelp/android/database/ColumnType;

    sget-object v4, Lcom/yelp/android/database/ColumnModifier;->NOT_NULL:Lcom/yelp/android/database/ColumnModifier;

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/database/f;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;Lcom/yelp/android/database/ColumnModifier;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/n;->a(Lcom/yelp/android/database/f;)Lcom/yelp/android/database/n;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/database/f;

    const-string/jumbo v2, "filter_exists"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->INTEGER:Lcom/yelp/android/database/ColumnType;

    sget-object v4, Lcom/yelp/android/database/ColumnModifier;->NOT_NULL:Lcom/yelp/android/database/ColumnModifier;

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/database/f;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;Lcom/yelp/android/database/ColumnModifier;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/n;->a(Lcom/yelp/android/database/f;)Lcom/yelp/android/database/n;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/database/f;

    const-string/jumbo v2, "prices"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->INTEGER:Lcom/yelp/android/database/ColumnType;

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/database/f;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/n;->a(Lcom/yelp/android/database/f;)Lcom/yelp/android/database/n;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/database/f;

    const-string/jumbo v2, "open"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->INTEGER:Lcom/yelp/android/database/ColumnType;

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/database/f;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/n;->a(Lcom/yelp/android/database/f;)Lcom/yelp/android/database/n;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/database/f;

    const-string/jumbo v2, "radius"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->TEXT:Lcom/yelp/android/database/ColumnType;

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/database/f;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/n;->a(Lcom/yelp/android/database/f;)Lcom/yelp/android/database/n;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/database/f;

    const-string/jumbo v2, "radius_label"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->TEXT:Lcom/yelp/android/database/ColumnType;

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/database/f;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/n;->a(Lcom/yelp/android/database/f;)Lcom/yelp/android/database/n;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/database/f;

    const-string/jumbo v2, "sort_ordinal"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->INTEGER:Lcom/yelp/android/database/ColumnType;

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/database/f;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/n;->a(Lcom/yelp/android/database/f;)Lcom/yelp/android/database/n;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/database/f;

    const-string/jumbo v2, "attributes"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->TEXT:Lcom/yelp/android/database/ColumnType;

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/database/f;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/n;->a(Lcom/yelp/android/database/f;)Lcom/yelp/android/database/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/n;->a()Lcom/yelp/android/database/m;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/database/j;->a:Lcom/yelp/android/database/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yelp/android/database/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/database/m;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/yelp/android/database/j;->a:Lcom/yelp/android/database/m;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0xb

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x10

    return v0
.end method
