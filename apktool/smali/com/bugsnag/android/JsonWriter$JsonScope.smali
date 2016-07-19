.class final enum Lcom/bugsnag/android/JsonWriter$JsonScope;
.super Ljava/lang/Enum;
.source "JsonWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bugsnag/android/JsonWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "JsonScope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bugsnag/android/JsonWriter$JsonScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bugsnag/android/JsonWriter$JsonScope;

.field public static final enum CLOSED:Lcom/bugsnag/android/JsonWriter$JsonScope;

.field public static final enum DANGLING_NAME:Lcom/bugsnag/android/JsonWriter$JsonScope;

.field public static final enum EMPTY_ARRAY:Lcom/bugsnag/android/JsonWriter$JsonScope;

.field public static final enum EMPTY_DOCUMENT:Lcom/bugsnag/android/JsonWriter$JsonScope;

.field public static final enum EMPTY_OBJECT:Lcom/bugsnag/android/JsonWriter$JsonScope;

.field public static final enum NONEMPTY_ARRAY:Lcom/bugsnag/android/JsonWriter$JsonScope;

.field public static final enum NONEMPTY_DOCUMENT:Lcom/bugsnag/android/JsonWriter$JsonScope;

.field public static final enum NONEMPTY_OBJECT:Lcom/bugsnag/android/JsonWriter$JsonScope;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 137
    new-instance v0, Lcom/bugsnag/android/JsonWriter$JsonScope;

    const-string/jumbo v1, "EMPTY_ARRAY"

    invoke-direct {v0, v1, v3}, Lcom/bugsnag/android/JsonWriter$JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/JsonWriter$JsonScope;->EMPTY_ARRAY:Lcom/bugsnag/android/JsonWriter$JsonScope;

    .line 143
    new-instance v0, Lcom/bugsnag/android/JsonWriter$JsonScope;

    const-string/jumbo v1, "NONEMPTY_ARRAY"

    invoke-direct {v0, v1, v4}, Lcom/bugsnag/android/JsonWriter$JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/JsonWriter$JsonScope;->NONEMPTY_ARRAY:Lcom/bugsnag/android/JsonWriter$JsonScope;

    .line 149
    new-instance v0, Lcom/bugsnag/android/JsonWriter$JsonScope;

    const-string/jumbo v1, "EMPTY_OBJECT"

    invoke-direct {v0, v1, v5}, Lcom/bugsnag/android/JsonWriter$JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/JsonWriter$JsonScope;->EMPTY_OBJECT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    .line 155
    new-instance v0, Lcom/bugsnag/android/JsonWriter$JsonScope;

    const-string/jumbo v1, "DANGLING_NAME"

    invoke-direct {v0, v1, v6}, Lcom/bugsnag/android/JsonWriter$JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/JsonWriter$JsonScope;->DANGLING_NAME:Lcom/bugsnag/android/JsonWriter$JsonScope;

    .line 161
    new-instance v0, Lcom/bugsnag/android/JsonWriter$JsonScope;

    const-string/jumbo v1, "NONEMPTY_OBJECT"

    invoke-direct {v0, v1, v7}, Lcom/bugsnag/android/JsonWriter$JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/JsonWriter$JsonScope;->NONEMPTY_OBJECT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    .line 166
    new-instance v0, Lcom/bugsnag/android/JsonWriter$JsonScope;

    const-string/jumbo v1, "EMPTY_DOCUMENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/bugsnag/android/JsonWriter$JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/JsonWriter$JsonScope;->EMPTY_DOCUMENT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    .line 171
    new-instance v0, Lcom/bugsnag/android/JsonWriter$JsonScope;

    const-string/jumbo v1, "NONEMPTY_DOCUMENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/bugsnag/android/JsonWriter$JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/JsonWriter$JsonScope;->NONEMPTY_DOCUMENT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    .line 176
    new-instance v0, Lcom/bugsnag/android/JsonWriter$JsonScope;

    const-string/jumbo v1, "CLOSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/bugsnag/android/JsonWriter$JsonScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bugsnag/android/JsonWriter$JsonScope;->CLOSED:Lcom/bugsnag/android/JsonWriter$JsonScope;

    .line 131
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/bugsnag/android/JsonWriter$JsonScope;

    sget-object v1, Lcom/bugsnag/android/JsonWriter$JsonScope;->EMPTY_ARRAY:Lcom/bugsnag/android/JsonWriter$JsonScope;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bugsnag/android/JsonWriter$JsonScope;->NONEMPTY_ARRAY:Lcom/bugsnag/android/JsonWriter$JsonScope;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bugsnag/android/JsonWriter$JsonScope;->EMPTY_OBJECT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bugsnag/android/JsonWriter$JsonScope;->DANGLING_NAME:Lcom/bugsnag/android/JsonWriter$JsonScope;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bugsnag/android/JsonWriter$JsonScope;->NONEMPTY_OBJECT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/bugsnag/android/JsonWriter$JsonScope;->EMPTY_DOCUMENT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/bugsnag/android/JsonWriter$JsonScope;->NONEMPTY_DOCUMENT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/bugsnag/android/JsonWriter$JsonScope;->CLOSED:Lcom/bugsnag/android/JsonWriter$JsonScope;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bugsnag/android/JsonWriter$JsonScope;->$VALUES:[Lcom/bugsnag/android/JsonWriter$JsonScope;

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
    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter$JsonScope;
    .locals 1

    .prologue
    .line 131
    const-class v0, Lcom/bugsnag/android/JsonWriter$JsonScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bugsnag/android/JsonWriter$JsonScope;

    return-object v0
.end method

.method public static values()[Lcom/bugsnag/android/JsonWriter$JsonScope;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/bugsnag/android/JsonWriter$JsonScope;->$VALUES:[Lcom/bugsnag/android/JsonWriter$JsonScope;

    invoke-virtual {v0}, [Lcom/bugsnag/android/JsonWriter$JsonScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bugsnag/android/JsonWriter$JsonScope;

    return-object v0
.end method
