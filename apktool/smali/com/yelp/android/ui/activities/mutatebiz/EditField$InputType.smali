.class public enum Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;
.super Ljava/lang/Enum;
.source "EditField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/mutatebiz/EditField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "InputType"
.end annotation

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


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 33
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    const-string/jumbo v1, "NAME"

    const/16 v2, 0x2001

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->NAME:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    .line 36
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType$1;

    const-string/jumbo v1, "PHONE"

    invoke-direct {v0, v1, v5, v3}, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->PHONE:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    .line 43
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType$2;

    const-string/jumbo v1, "MULTILINE_TEXT"

    const v2, 0x20001

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->MULTILINE_TEXT:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    .line 52
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    const-string/jumbo v1, "URI"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->URI:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    .line 55
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    const-string/jumbo v1, "MENU_URI"

    sget-object v2, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->URI:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    iget v2, v2, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->editTextInputType:I

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->MENU_URI:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    sget-object v1, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->NAME:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->PHONE:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->MULTILINE_TEXT:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->URI:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->MENU_URI:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->$VALUES:[Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput p3, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->editTextInputType:I

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/yelp/android/ui/activities/mutatebiz/EditField$1;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;-><init>(Ljava/lang/String;II)V

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
    return-void
.end method
