.class abstract enum Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;
.super Ljava/lang/Enum;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;

.field public static final enum MESSAGE:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;

.field public static final enum RECIPIENT:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;

.field public static final enum SUBJECT:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;


# instance fields
.field private final mStringResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField$1;

    const-string/jumbo v1, "RECIPIENT"

    const v2, 0x7f07011b

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;->RECIPIENT:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;

    .line 78
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField$2;

    const-string/jumbo v1, "SUBJECT"

    const v2, 0x7f0703e1

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;->SUBJECT:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;

    .line 84
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField$3;

    const-string/jumbo v1, "MESSAGE"

    const v2, 0x7f0702d5

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;->MESSAGE:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;->RECIPIENT:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;->SUBJECT:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;->MESSAGE:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;->$VALUES:[Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    iput p3, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;->mStringResourceId:I

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/yelp/android/ui/activities/messaging/b;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$900(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;->getErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getErrorMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;->mStringResourceId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;->$VALUES:[Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$ConversationRequiredField;

    return-object v0
.end method


# virtual methods
.method public abstract isValid(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)Z
.end method
