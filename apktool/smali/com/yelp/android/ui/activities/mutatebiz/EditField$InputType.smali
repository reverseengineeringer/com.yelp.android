.class public enum Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;
.super Ljava/lang/Enum;
.source "EditField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

.field public static final enum MENU_URI:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

.field public static final enum MULTILINE_TEXT:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

.field public static final enum NAME:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

.field public static final enum PHONE:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

.field public static final enum URI:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;


# instance fields
.field public final editTextInputType:I

.field public final hint:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 33
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    const-string/jumbo v1, "NAME"

    const/16 v2, 0x2001

    const v3, 0x7f0700ff

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->NAME:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    .line 35
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType$1;

    const-string/jumbo v1, "PHONE"

    const v2, 0x7f07045b

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType$1;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->PHONE:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    .line 42
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType$2;

    const-string/jumbo v1, "MULTILINE_TEXT"

    const v2, 0x20001

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType$2;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->MULTILINE_TEXT:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    .line 50
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    const-string/jumbo v1, "URI"

    const/16 v2, 0x11

    const v3, 0x7f070673

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->URI:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    .line 53
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    const-string/jumbo v1, "MENU_URI"

    sget-object v2, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->URI:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    iget v2, v2, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->editTextInputType:I

    const v3, 0x7f07037f

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->MENU_URI:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    sget-object v1, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->NAME:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->PHONE:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->MULTILINE_TEXT:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->URI:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->MENU_URI:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->$VALUES:[Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p3, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->editTextInputType:I

    .line 61
    iput p4, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->hint:I

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILcom/yelp/android/ui/activities/mutatebiz/t;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->$VALUES:[Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    return-object v0
.end method


# virtual methods
.method public setup(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->editTextInputType:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 72
    iget v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->hint:I

    if-eqz v0, :cond_0

    .line 73
    iget v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->hint:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(I)V

    .line 75
    :cond_0
    return-void
.end method
